import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * Renders assets/stats.svg — a sakura themed GitHub stats card.
 * Usage: java SakuraStats.java stats.properties assets/stats.svg
 */
public class SakuraStats {

    static final String FONT = "Segoe UI, Helvetica, Arial, sans-serif";
    static final String PETAL = "M0 0C-12-6-11-19-3-21L0-17L3-21C11-19 12-6 0 0Z";
    static final String[] PINKS = {"deeppink", "hotpink", "palevioletred", "lightpink", "mediumvioletred", "pink"};

    public static void main(String[] args) throws IOException {
        Properties p = new Properties();
        try (Reader r = Files.newBufferedReader(Path.of(args[0]))) {
            p.load(r);
        }

        String[][] stats = {
            {"Total stars", p.getProperty("stars", "0")},
            {"Commits this year", p.getProperty("commits", "0")},
            {"Pull requests", p.getProperty("prs", "0")},
            {"Issues", p.getProperty("issues", "0")},
            {"Contributions this year", p.getProperty("contribs", "0")},
            {"Repositories", p.getProperty("repos", "0")},
        };

        StringBuilder body = new StringBuilder();

        // left side: six numbers in two columns
        for (int i = 0; i < stats.length; i++) {
            int x = 40 + (i / 3) * 225;
            int y = 112 + (i % 3) * 52;
            long value = Long.parseLong(stats[i][1].trim());
            body.append("""
                <g transform="translate(%d %d) scale(0.45)" fill="hotpink"><use class="sway" href="#p" xlink:href="#p"/></g>
                <text x="%d" y="%d" font-size="24" font-weight="800" fill="url(#ink)">%,d</text>
                <text x="%d" y="%d" font-size="13" fill="pink">%s</text>
                """.formatted(x + 6, y - 6, x + 20, y, value, x + 20, y + 18, stats[i][0]));
        }

        // right side: top languages as pink bars
        List<String> names = new ArrayList<>();
        List<Long> sizes = new ArrayList<>();
        for (int i = 0; p.containsKey("lang." + i); i++) {
            String v = p.getProperty("lang." + i);
            int cut = v.lastIndexOf(':');
            names.add(v.substring(0, cut));
            sizes.add(Long.parseLong(v.substring(cut + 1).trim()));
        }
        long total = sizes.stream().mapToLong(Long::longValue).sum();

        for (int i = 0; i < names.size(); i++) {
            int y = 96 + i * 26;
            double pct = total == 0 ? 0 : sizes.get(i) * 100.0 / total;
            double bar = Math.max(6, 200 * pct / 100);
            body.append("""
                <text x="530" y="%d" font-size="14" fill="mistyrose">%s</text>
                <rect x="660" y="%d" width="200" height="9" rx="4.5" fill="hotpink" fill-opacity="0.12"/>
                <rect class="grow" x="660" y="%d" width="%.1f" height="9" rx="4.5" fill="%s"/>
                <text x="925" y="%d" font-size="13" fill="lightpink" text-anchor="end">%.1f%%</text>
                """.formatted(y, esc(names.get(i)), y - 9, y - 9, bar, PINKS[i % PINKS.length], y, pct));
        }
        if (names.isEmpty()) {
            body.append("<text x=\"530\" y=\"120\" font-size=\"14\" fill=\"pink\">No language data yet</text>\n");
        }

        String svg = """
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 960 270" width="960" height="270">
              <defs>
                <radialGradient id="glow" cx="20%%" cy="0%%" r="90%%">
                  <stop offset="0" stop-color="mediumvioletred" stop-opacity="0.4"/>
                  <stop offset="1" stop-color="black" stop-opacity="0"/>
                </radialGradient>
                <linearGradient id="ink" x1="0" x2="1">
                  <stop offset="0" stop-color="hotpink"/>
                  <stop offset="1" stop-color="lightpink"/>
                </linearGradient>
                <clipPath id="card"><rect width="960" height="270" rx="20"/></clipPath>
                <path id="p" d="%s"/>
              </defs>
              <style>
                .sway { animation: sway 2.6s ease-in-out infinite alternate; }
                .grow { animation: grow 1.4s ease-out both; transform-box: fill-box; transform-origin: left; }
                .fall { animation: fall linear infinite; transform-box: fill-box; transform-origin: center; }
                @keyframes sway { from { transform: rotate(-16deg); } to { transform: rotate(16deg); } }
                @keyframes grow { from { transform: scaleX(0); } to { transform: scaleX(1); } }
                @keyframes fall {
                  0%%   { transform: translate(0, -30px) rotate(0deg); opacity: 0; }
                  15%%  { opacity: 0.7; }
                  100%% { transform: translate(60px, 300px) rotate(420deg); opacity: 0; }
                }
              </style>
              <g clip-path="url(#card)" font-family="%s">
                <rect width="960" height="270" fill="black"/>
                <rect width="960" height="270" fill="url(#glow)"/>
                <g transform="translate(470 0) scale(0.5)" fill="pink"><use class="fall" href="#p" xlink:href="#p" style="animation-duration:12s;animation-delay:-4s"/></g>
                <g transform="translate(900 0) scale(0.6)" fill="hotpink"><use class="fall" href="#p" xlink:href="#p" style="animation-duration:14s;animation-delay:-9s"/></g>
                <text x="40" y="54" font-size="20" font-weight="800" fill="url(#ink)">@Danukaji-Hansanath0</text>
                <text x="530" y="54" font-size="20" font-weight="800" fill="url(#ink)">Most used languages</text>
                <rect x="40" y="66" width="200" height="2" rx="1" fill="hotpink" fill-opacity="0.5"/>
                <rect x="530" y="66" width="200" height="2" rx="1" fill="hotpink" fill-opacity="0.5"/>
                <rect x="492" y="40" width="1.5" height="200" fill="hotpink" fill-opacity="0.2"/>
            %s
                <text x="925" y="255" font-size="11" fill="palevioletred" text-anchor="end">updated %s</text>
                <rect x="1" y="1" width="958" height="268" rx="20" fill="none" stroke="hotpink" stroke-opacity="0.45" stroke-width="2"/>
              </g>
            </svg>
            """.formatted(PETAL, FONT, body.toString().indent(4), LocalDate.now());

        Files.writeString(Path.of(args[1]), svg);
        System.out.println("Wrote " + args[1]);
    }

    static String esc(String s) {
        return s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;");
    }
}
