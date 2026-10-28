import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Properties;
import java.util.stream.Stream;

/**
 * Re-colors the profile from theme.properties.
 *
 *   java scripts/ApplyTheme.java          turns every *.tpl file into the real file, e.g.
 *                                         assets/about.svg.tpl -> assets/about.svg
 *   java scripts/ApplyTheme.java export   prints KEY_HEX=... lines (used by the workflow)
 *
 * In a template, {{MAIN}} becomes the color name from theme.properties
 * and {{MAIN_HEX}} becomes its hex code without the # (for badge URLs).
 */
public class ApplyTheme {

    public static void main(String[] args) throws IOException {
        Properties theme = load(Path.of("theme.properties"));
        Properties names = load(Path.of("scripts/css-colors.properties"));

        if (args.length > 0 && args[0].equals("export")) {
            for (String key : theme.stringPropertyNames()) {
                System.out.println(key + "_HEX=" + hex(theme.getProperty(key), names));
            }
            return;
        }

        List<Path> files;
        try (Stream<Path> walk = Files.walk(Path.of("."))) {
            files = walk.filter(f -> f.toString().endsWith(".tpl")).toList();
        }

        for (Path file : files) {
            String text = Files.readString(file);
            for (String key : theme.stringPropertyNames()) {
                String value = css(theme.getProperty(key));
                text = text.replace("{{" + key + "_HEX}}", hex(value, names));
                text = text.replace("{{" + key + "}}", value);
            }
            if (text.contains("{{")) {
                throw new IllegalStateException(file + " uses a color that is not in theme.properties");
            }
            String name = file.toString();
            Path target = Path.of(name.substring(0, name.length() - ".tpl".length()));
            Files.writeString(target, text);
            System.out.println("Themed " + target);
        }
    }

    /** "dodgerblue" -> "1e90ff", "#1E90FF" -> "1e90ff" */
    static String hex(String color, Properties names) {
        String c = color.trim().toLowerCase().replace("#", "");
        return names.getProperty(c, c);
    }

    /** hex codes need a # inside SVG files */
    static String css(String color) {
        String c = color.trim();
        return c.matches("[0-9a-fA-F]{6}") ? "#" + c : c;
    }

    static Properties load(Path path) throws IOException {
        Properties p = new Properties();
        try (Reader r = Files.newBufferedReader(path)) {
            p.load(r);
        }
        return p;
    }
}
