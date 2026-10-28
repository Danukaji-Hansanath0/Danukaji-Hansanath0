<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 960 391" width="960" height="391">
  <defs>
    <radialGradient id="glow" cx="85%" cy="10%" r="80%">
      <stop offset="0" stop-color="{{GLOW}}" stop-opacity="0.35"/>
      <stop offset="1" stop-color="{{BG}}" stop-opacity="0"/>
    </radialGradient>
    <linearGradient id="bar" x1="0" x2="1">
      <stop offset="0" stop-color="{{GLOW}}" stop-opacity="0.55"/>
      <stop offset="1" stop-color="{{MAIN}}" stop-opacity="0.25"/>
    </linearGradient>
    <clipPath id="card"><rect width="960" height="391" rx="18"/></clipPath>
    <path id="p" d="M0 0C-12-6-11-19-3-21L0-17L3-21C11-19 12-6 0 0Z"/>
  </defs>
  <style>
    .line { animation: in 0.6s ease-out both; }
    .cursor { animation: blink 1s steps(1) infinite; }
    .fall { animation: fall linear infinite; transform-box: fill-box; transform-origin: center; }
    @keyframes in { from { opacity: 0; transform: translateX(-12px); } to { opacity: 1; transform: translateX(0); } }
    @keyframes blink { 50% { opacity: 0; } }
    @keyframes fall {
      0%   { transform: translate(0, -30px) rotate(0deg); opacity: 0; }
      15%  { opacity: 0.6; }
      100% { transform: translate(-50px, 431px) rotate(400deg); opacity: 0; }
    }
  </style>
  <g clip-path="url(#card)">
    <rect width="960" height="391" fill="{{BG}}"/>
    <rect width="960" height="391" fill="url(#glow)"/>

    <!-- window bar -->
    <rect width="960" height="44" fill="url(#bar)"/>
    <circle cx="26" cy="22" r="7" fill="{{STRONG}}"/>
    <circle cx="50" cy="22" r="7" fill="{{MAIN}}"/>
    <circle cx="74" cy="22" r="7" fill="{{LIGHT}}"/>
    <rect x="400.0" y="9" width="160" height="26" rx="8" fill="black" fill-opacity="0.45"/>
    <text x="480.0" y="27" text-anchor="middle" font-family="Fira Code, JetBrains Mono, Cascadia Code, Consolas, Menlo, DejaVu Sans Mono, monospace" font-size="14" fill="{{SOFT}}">Danukaji.java</text>
    <text x="936" y="27" text-anchor="end" font-family="Fira Code, JetBrains Mono, Cascadia Code, Consolas, Menlo, DejaVu Sans Mono, monospace" font-size="12" fill="{{LIGHT}}" opacity="0.7">Java 21</text>

    <!-- gutter -->
    <rect x="0" y="44" width="58" height="347" fill="{{MAIN}}" fill-opacity="0.05"/>

    <g font-family="Fira Code, JetBrains Mono, Cascadia Code, Consolas, Menlo, DejaVu Sans Mono, monospace" font-size="18">
    <g class="line" style="animation-delay:0.30s"><text x="44" y="94" text-anchor="end" fill="dimgray">1</text><text x="70" y="94" xml:space="preserve"><tspan fill="{{DIM}}">// hello there, welcome to my profile</tspan></text></g>
    <g class="line" style="animation-delay:0.48s"><text x="44" y="125" text-anchor="end" fill="dimgray">2</text><text x="70" y="125" xml:space="preserve"><tspan fill="{{STRONG}}" font-weight="700">public</tspan><tspan fill="{{TEXT}}"> </tspan><tspan fill="{{STRONG}}" font-weight="700">class</tspan><tspan fill="{{TEXT}}"> </tspan><tspan fill="{{LIGHT}}" font-weight="700">Danukaji</tspan><tspan fill="{{MUTED}}"> {</tspan></text></g>
    <g class="line" style="animation-delay:0.66s"><text x="44" y="156" text-anchor="end" fill="dimgray">3</text><text x="70" y="156" xml:space="preserve"><tspan fill="{{TEXT}}">    </tspan><tspan fill="{{MAIN}}">String</tspan><tspan fill="{{TEXT}}">   </tspan><tspan fill="{{TEXT}}">role</tspan><tspan fill="{{TEXT}}">     </tspan><tspan fill="{{MUTED}}">= </tspan><tspan fill="{{SOFT}}">"Software Engineer @ RydeRentACar"</tspan><tspan fill="{{MUTED}}">;</tspan></text></g>
    <g class="line" style="animation-delay:0.84s"><text x="44" y="187" text-anchor="end" fill="dimgray">4</text><text x="70" y="187" xml:space="preserve"><tspan fill="{{TEXT}}">    </tspan><tspan fill="{{MAIN}}">String[]</tspan><tspan fill="{{TEXT}}"> </tspan><tspan fill="{{TEXT}}">code</tspan><tspan fill="{{TEXT}}">     </tspan><tspan fill="{{MUTED}}">= {</tspan><tspan fill="{{SOFT}}">"Java"</tspan><tspan fill="{{MUTED}}">, </tspan><tspan fill="{{SOFT}}">"Spring"</tspan><tspan fill="{{MUTED}}">, </tspan><tspan fill="{{SOFT}}">"PHP"</tspan><tspan fill="{{MUTED}}">, </tspan><tspan fill="{{SOFT}}">"Vue"</tspan><tspan fill="{{MUTED}}">};</tspan></text></g>
    <g class="line" style="animation-delay:1.02s"><text x="44" y="218" text-anchor="end" fill="dimgray">5</text><text x="70" y="218" xml:space="preserve"><tspan fill="{{TEXT}}">    </tspan><tspan fill="{{MAIN}}">String[]</tspan><tspan fill="{{TEXT}}"> </tspan><tspan fill="{{TEXT}}">ops</tspan><tspan fill="{{TEXT}}">      </tspan><tspan fill="{{MUTED}}">= {</tspan><tspan fill="{{SOFT}}">"Docker"</tspan><tspan fill="{{MUTED}}">, </tspan><tspan fill="{{SOFT}}">"Kubernetes"</tspan><tspan fill="{{MUTED}}">, </tspan><tspan fill="{{SOFT}}">"Linux"</tspan><tspan fill="{{MUTED}}">};</tspan></text></g>
    <g class="line" style="animation-delay:1.20s"><text x="44" y="249" text-anchor="end" fill="dimgray">6</text><text x="70" y="249" xml:space="preserve"><tspan fill="{{TEXT}}">    </tspan><tspan fill="{{MAIN}}">String</tspan><tspan fill="{{TEXT}}">   </tspan><tspan fill="{{TEXT}}">cert</tspan><tspan fill="{{TEXT}}">     </tspan><tspan fill="{{MUTED}}">= </tspan><tspan fill="{{SOFT}}">"CKA"</tspan><tspan fill="{{MUTED}}">;</tspan></text></g>
    <g class="line" style="animation-delay:1.38s"><text x="44" y="280" text-anchor="end" fill="dimgray">7</text><text x="70" y="280" xml:space="preserve"><tspan fill="{{TEXT}}">    </tspan><tspan fill="{{MAIN}}">String</tspan><tspan fill="{{TEXT}}">   </tspan><tspan fill="{{TEXT}}">learning</tspan><tspan fill="{{TEXT}}"> </tspan><tspan fill="{{MUTED}}">= </tspan><tspan fill="{{SOFT}}">"AI agents &amp; MCP"</tspan><tspan fill="{{MUTED}}">;</tspan></text></g>
    <g class="line" style="animation-delay:1.56s"><text x="44" y="311" text-anchor="end" fill="dimgray">8</text><text x="70" y="311" xml:space="preserve"><tspan fill="{{TEXT}}">    </tspan><tspan fill="{{MAIN}}">String</tspan><tspan fill="{{TEXT}}">   </tspan><tspan fill="{{TEXT}}">vibe</tspan><tspan fill="{{TEXT}}">     </tspan><tspan fill="{{MUTED}}">= </tspan><tspan fill="{{SOFT}}">"dark mode + sakura"</tspan><tspan fill="{{MUTED}}">;</tspan></text></g>
    <g class="line" style="animation-delay:1.74s"><text x="44" y="342" text-anchor="end" fill="dimgray">9</text><text x="70" y="342" xml:space="preserve"><tspan fill="{{MUTED}}">}</tspan></text></g>
    </g>
    <rect class="cursor" x="92" y="325" width="10" height="22" rx="2" fill="{{MAIN}}"/>

    <!-- petals -->
    <g transform="translate(780 0) scale(0.55)" fill="{{SOFT}}"><use class="fall" href="#p" xlink:href="#p" style="animation-duration:11s;animation-delay:-3s"/></g>
    <g transform="translate(880 0) scale(0.45)" fill="{{MAIN}}"><use class="fall" href="#p" xlink:href="#p" style="animation-duration:14s;animation-delay:-8s"/></g>
    <g transform="translate(640 0) scale(0.4)" fill="{{LIGHT}}"><use class="fall" href="#p" xlink:href="#p" style="animation-duration:16s;animation-delay:-12s"/></g>

    <!-- blossom in the corner -->
    <g transform="translate(900 341) scale(1.6)" fill="{{MUTED}}" opacity="0.45">
      <use href="#p" xlink:href="#p"/><use href="#p" xlink:href="#p" transform="rotate(72)"/><use href="#p" xlink:href="#p" transform="rotate(144)"/>
      <use href="#p" xlink:href="#p" transform="rotate(216)"/><use href="#p" xlink:href="#p" transform="rotate(288)"/>
      <circle r="4" fill="lightyellow" stroke="{{STRONG}}" stroke-width="1.5"/>
    </g>

    <rect x="1" y="1" width="958" height="389" rx="18" fill="none" stroke="{{MAIN}}" stroke-opacity="0.45" stroke-width="2"/>
  </g>
</svg>
