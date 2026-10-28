<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 960 694" width="960" height="694">
  <defs>
    <radialGradient id="glow" cx="10%" cy="0%" r="100%">
      <stop offset="0" stop-color="{{GLOW}}" stop-opacity="0.38"/>
      <stop offset="1" stop-color="{{BG}}" stop-opacity="0"/>
    </radialGradient>
    <radialGradient id="glow2" cx="100%" cy="100%" r="60%">
      <stop offset="0" stop-color="{{STRONG}}" stop-opacity="0.18"/>
      <stop offset="1" stop-color="{{BG}}" stop-opacity="0"/>
    </radialGradient>
    <linearGradient id="tile" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0" stop-color="{{GLOW}}"/>
      <stop offset="1" stop-color="{{MAIN}}"/>
    </linearGradient>
    <linearGradient id="solid" x1="0" x2="1">
      <stop offset="0" stop-color="{{MAIN}}"/>
      <stop offset="1" stop-color="{{LIGHT}}"/>
    </linearGradient>
    <linearGradient id="ink" x1="0" x2="1">
      <stop offset="0" stop-color="{{MAIN}}"/>
      <stop offset="1" stop-color="{{LIGHT}}"/>
    </linearGradient>
    <clipPath id="card"><rect width="960" height="694" rx="22"/></clipPath>
    <path id="p" d="M0 0C-12-6-11-19-3-21L0-17L3-21C11-19 12-6 0 0Z"/>
  </defs>
  <style>
    .pop { animation: pop 0.6s ease-out both; }
    .fall { animation: fall linear infinite; transform-box: fill-box; transform-origin: center; }
    @keyframes pop { from { opacity: 0; transform: translateY(6px); } to { opacity: 1; transform: translateY(0); } }
    @keyframes fall {
      0%   { transform: translate(0, -30px) rotate(0deg); opacity: 0; }
      12%  { opacity: 0.55; }
      100% { transform: translate(-70px, 734px) rotate(520deg); opacity: 0; }
    }
  </style>
  <g clip-path="url(#card)" font-family="Segoe UI, Helvetica, Arial, sans-serif">
    <rect width="960" height="694" fill="{{BG}}"/>
    <rect width="960" height="694" fill="url(#glow)"/>
    <rect width="960" height="694" fill="url(#glow2)"/>
    <text x="40" y="52" font-size="22" font-weight="800" fill="url(#ink)">My toolbox</text>
    <text x="920" y="52" font-size="13" fill="{{MUTED}}" text-anchor="end">filled = what I use most</text>
    <rect x="40" y="64" width="160" height="2" rx="1" fill="{{MAIN}}" fill-opacity="0.5"/>

    <g class="pop" style="animation-delay:0.15s">
      <rect x="40" y="96" width="210" height="70" rx="14" fill="url(#tile)"/>
      <g transform="translate(56 121)"><path d="M6 5 L1 10 L6 15 M14 5 L19 10 L14 15 M11 3 L9 17" fill="none" stroke="white" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"/></g>
      <text x="88" y="136" font-size="15" font-weight="800" fill="white">Languages</text>
    </g>
    <g class="pop" style="animation-delay:0.27s">
      <rect x="274" y="96" width="73" height="30" rx="15" fill="url(#solid)" />
      <circle cx="288" cy="111" r="3" fill="black" opacity="0.8"/>
      <text x="298" y="116" font-size="14" font-weight="800" fill="black">Java</text>
    </g>
    <g class="pop" style="animation-delay:0.28s">
      <rect x="357" y="96" width="79" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="371" cy="111" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="381" y="116" font-size="14" font-weight="600" fill="{{TEXT}}">Kotlin</text>
    </g>
    <g class="pop" style="animation-delay:0.29s">
      <rect x="446" y="96" width="68" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="460" cy="111" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="470" y="116" font-size="14" font-weight="600" fill="{{TEXT}}">Dart</text>
    </g>
    <g class="pop" style="animation-delay:0.31s">
      <rect x="524" y="96" width="113" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="538" cy="111" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="548" y="116" font-size="14" font-weight="600" fill="{{TEXT}}">TypeScript</text>
    </g>
    <g class="pop" style="animation-delay:0.33s">
      <rect x="648" y="96" width="113" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="662" cy="111" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="672" y="116" font-size="14" font-weight="600" fill="{{TEXT}}">JavaScript</text>
    </g>
    <g class="pop" style="animation-delay:0.34s">
      <rect x="771" y="96" width="86" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="785" cy="111" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="795" y="116" font-size="14" font-weight="600" fill="{{TEXT}}">Python</text>
    </g>
    <g class="pop" style="animation-delay:0.35s">
      <rect x="274" y="136" width="69" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="288" cy="151" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="298" y="156" font-size="14" font-weight="600" fill="{{TEXT}}">PHP</text>
    </g>
    <g class="pop" style="animation-delay:0.37s">
      <rect x="353" y="136" width="60" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="367" cy="151" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="377" y="156" font-size="14" font-weight="600" fill="{{TEXT}}">C#</text>
    </g>
    <g class="pop" style="animation-delay:0.39s">
      <rect x="423" y="136" width="79" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="437" cy="151" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="447" y="156" font-size="14" font-weight="600" fill="{{TEXT}}">HTML</text>
    </g>
    <g class="pop" style="animation-delay:0.40s">
      <rect x="512" y="136" width="69" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="526" cy="151" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="536" y="156" font-size="14" font-weight="600" fill="{{TEXT}}">CSS</text>
    </g>
    <rect x="40" y="176" width="880" height="1" fill="{{MAIN}}" fill-opacity="0.14"/>

    <g class="pop" style="animation-delay:0.27s">
      <rect x="40" y="188" width="210" height="70" rx="14" fill="url(#tile)"/>
      <g transform="translate(56 213)"><rect x="2" y="2" width="16" height="6" rx="2" fill="none" stroke="white" stroke-width="2"/><rect x="2" y="12" width="16" height="6" rx="2" fill="none" stroke="white" stroke-width="2"/><circle cx="6" cy="5" r="1.3" fill="white"/><circle cx="6" cy="15" r="1.3" fill="white"/></g>
      <text x="88" y="228" font-size="15" font-weight="800" fill="white">Backend</text>
    </g>
    <g class="pop" style="animation-delay:0.53s">
      <rect x="274" y="188" width="119" height="30" rx="15" fill="url(#solid)" />
      <circle cx="288" cy="203" r="3" fill="black" opacity="0.8"/>
      <text x="298" y="208" font-size="14" font-weight="800" fill="black">Spring Boot</text>
    </g>
    <g class="pop" style="animation-delay:0.55s">
      <rect x="403" y="188" width="144" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="417" cy="203" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="427" y="208" font-size="14" font-weight="600" fill="{{TEXT}}">Spring Security</text>
    </g>
    <g class="pop" style="animation-delay:0.56s">
      <rect x="556" y="188" width="69" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="570" cy="203" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="580" y="208" font-size="14" font-weight="600" fill="{{TEXT}}">JWT</text>
    </g>
    <g class="pop" style="animation-delay:0.58s">
      <rect x="636" y="188" width="77" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="650" cy="203" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="660" y="208" font-size="14" font-weight="600" fill="{{TEXT}}">gRPC</text>
    </g>
    <g class="pop" style="animation-delay:0.59s">
      <rect x="723" y="188" width="122" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="737" cy="203" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="747" y="208" font-size="14" font-weight="600" fill="{{TEXT}}">REST APIs</text>
    </g>
    <g class="pop" style="animation-delay:0.61s">
      <rect x="274" y="228" width="90" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="288" cy="243" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="298" y="248" font-size="14" font-weight="600" fill="{{TEXT}}">Laravel</text>
    </g>
    <g class="pop" style="animation-delay:0.62s">
      <rect x="374" y="228" width="90" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="388" cy="243" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="398" y="248" font-size="14" font-weight="600" fill="{{TEXT}}">Node.js</text>
    </g>
    <g class="pop" style="animation-delay:0.64s">
      <rect x="475" y="228" width="131" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="489" cy="243" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="499" y="248" font-size="14" font-weight="600" fill="{{TEXT}}">Microservices</text>
    </g>
    <rect x="40" y="268" width="880" height="1" fill="{{MAIN}}" fill-opacity="0.14"/>

    <g class="pop" style="animation-delay:0.39s">
      <rect x="40" y="273" width="210" height="44" rx="14" fill="url(#tile)"/>
      <g transform="translate(56 285)"><rect x="5" y="1" width="10" height="18" rx="2.5" fill="none" stroke="white" stroke-width="2"/><circle cx="10" cy="15.5" r="1.2" fill="white"/></g>
      <text x="88" y="300" font-size="15" font-weight="800" fill="white">Frontend &amp; Mobile</text>
    </g>
    <g class="pop" style="animation-delay:0.77s">
      <rect x="274" y="280" width="83" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="288" cy="295" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="298" y="300" font-size="14" font-weight="600" fill="{{TEXT}}">Vue.js</text>
    </g>
    <g class="pop" style="animation-delay:0.79s">
      <rect x="367" y="280" width="88" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="381" cy="295" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="391" y="300" font-size="14" font-weight="600" fill="{{TEXT}}">Next.js</text>
    </g>
    <g class="pop" style="animation-delay:0.80s">
      <rect x="464" y="280" width="85" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="478" cy="295" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="488" y="300" font-size="14" font-weight="600" fill="{{TEXT}}">Flutter</text>
    </g>
    <g class="pop" style="animation-delay:0.82s">
      <rect x="560" y="280" width="133" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="574" cy="295" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="584" y="300" font-size="14" font-weight="600" fill="{{TEXT}}">UI/UX design</text>
    </g>
    <g class="pop" style="animation-delay:0.83s">
      <rect x="703" y="280" width="79" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="717" cy="295" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="727" y="300" font-size="14" font-weight="600" fill="{{TEXT}}">Figma</text>
    </g>
    <rect x="40" y="320" width="880" height="1" fill="{{MAIN}}" fill-opacity="0.14"/>

    <g class="pop" style="animation-delay:0.51s">
      <rect x="40" y="332" width="210" height="70" rx="14" fill="url(#tile)"/>
      <g transform="translate(56 357)"><rect x="1" y="2" width="18" height="12" rx="2" fill="none" stroke="white" stroke-width="2"/><path d="M7 18 H13 M10 14 V18" stroke="white" stroke-width="2" stroke-linecap="round"/></g>
      <text x="88" y="372" font-size="15" font-weight="800" fill="white">Desktop &amp; Reports</text>
    </g>
    <g class="pop" style="animation-delay:0.97s">
      <rect x="274" y="332" width="118" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="288" cy="347" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="298" y="352" font-size="14" font-weight="600" fill="{{TEXT}}">Java Swing</text>
    </g>
    <g class="pop" style="animation-delay:0.98s">
      <rect x="402" y="332" width="104" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="416" cy="347" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="426" y="352" font-size="14" font-weight="600" fill="{{TEXT}}">NetBeans</text>
    </g>
    <g class="pop" style="animation-delay:1.00s">
      <rect x="516" y="332" width="137" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="530" cy="347" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="540" y="352" font-size="14" font-weight="600" fill="{{TEXT}}">IntelliJ IDEA</text>
    </g>
    <g class="pop" style="animation-delay:1.01s">
      <rect x="663" y="332" width="138" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="677" cy="347" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="687" y="352" font-size="14" font-weight="600" fill="{{TEXT}}">JasperReports</text>
    </g>
    <g class="pop" style="animation-delay:1.03s">
      <rect x="274" y="372" width="161" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="288" cy="387" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="298" y="392" font-size="14" font-weight="600" fill="{{TEXT}}">Jaspersoft Studio</text>
    </g>
    <rect x="40" y="412" width="880" height="1" fill="{{MAIN}}" fill-opacity="0.14"/>

    <g class="pop" style="animation-delay:0.63s">
      <rect x="40" y="417" width="210" height="44" rx="14" fill="url(#tile)"/>
      <g transform="translate(56 429)"><ellipse cx="10" cy="4.5" rx="7.5" ry="3" fill="none" stroke="white" stroke-width="2"/><path d="M2.5 4.5 V15.5 C2.5 19.5 17.5 19.5 17.5 15.5 V4.5 M2.5 10 C2.5 14 17.5 14 17.5 10" fill="none" stroke="white" stroke-width="2"/></g>
      <text x="88" y="444" font-size="15" font-weight="800" fill="white">Data</text>
    </g>
    <g class="pop" style="animation-delay:1.17s">
      <rect x="274" y="424" width="121" height="30" rx="15" fill="url(#solid)" />
      <circle cx="288" cy="439" r="3" fill="black" opacity="0.8"/>
      <text x="298" y="444" font-size="14" font-weight="800" fill="black">PostgreSQL</text>
    </g>
    <g class="pop" style="animation-delay:1.18s">
      <rect x="405" y="424" width="87" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="419" cy="439" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="429" y="444" font-size="14" font-weight="600" fill="{{TEXT}}">MySQL</text>
    </g>
    <g class="pop" style="animation-delay:1.19s">
      <rect x="502" y="424" width="77" height="30" rx="15" fill="url(#solid)" />
      <circle cx="516" cy="439" r="3" fill="black" opacity="0.8"/>
      <text x="526" y="444" font-size="14" font-weight="800" fill="black">Redis</text>
    </g>
    <g class="pop" style="animation-delay:1.21s">
      <rect x="589" y="424" width="101" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="603" cy="439" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="613" y="444" font-size="14" font-weight="600" fill="{{TEXT}}">MongoDB</text>
    </g>
    <g class="pop" style="animation-delay:1.23s">
      <rect x="700" y="424" width="132" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="714" cy="439" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="724" y="444" font-size="14" font-weight="600" fill="{{TEXT}}">SQL / NoSQL</text>
    </g>
    <rect x="40" y="464" width="880" height="1" fill="{{MAIN}}" fill-opacity="0.14"/>

    <g class="pop" style="animation-delay:0.75s">
      <rect x="40" y="476" width="210" height="70" rx="14" fill="url(#tile)"/>
      <g transform="translate(56 501)"><path d="M5 16 C1 16 0.5 10.5 4.5 10 C4.5 5 11 3.5 13 8 C17.5 7 19.5 12 16.5 14.5 C16 15.5 15.5 16 14.5 16 Z" fill="none" stroke="white" stroke-width="2" stroke-linejoin="round"/></g>
      <text x="88" y="516" font-size="15" font-weight="800" fill="white">DevOps &amp; Cloud</text>
    </g>
    <g class="pop" style="animation-delay:1.36s">
      <rect x="274" y="476" width="115" height="30" rx="15" fill="url(#solid)" />
      <circle cx="288" cy="491" r="3" fill="black" opacity="0.8"/>
      <text x="298" y="496" font-size="14" font-weight="800" fill="black">Kubernetes</text>
    </g>
    <g class="pop" style="animation-delay:1.38s">
      <rect x="399" y="476" width="86" height="30" rx="15" fill="url(#solid)" />
      <circle cx="413" cy="491" r="3" fill="black" opacity="0.8"/>
      <text x="423" y="496" font-size="14" font-weight="800" fill="black">Docker</text>
    </g>
    <g class="pop" style="animation-delay:1.39s">
      <rect x="496" y="476" width="151" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="510" cy="491" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="520" y="496" font-size="14" font-weight="600" fill="{{TEXT}}">Docker Compose</text>
    </g>
    <g class="pop" style="animation-delay:1.40s">
      <rect x="656" y="476" width="93" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="670" cy="491" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="680" y="496" font-size="14" font-weight="600" fill="{{TEXT}}">Dokploy</text>
    </g>
    <g class="pop" style="animation-delay:1.42s">
      <rect x="759" y="476" width="107" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="773" cy="491" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="783" y="496" font-size="14" font-weight="600" fill="{{TEXT}}">Cloudflare</text>
    </g>
    <g class="pop" style="animation-delay:1.44s">
      <rect x="274" y="516" width="77" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="288" cy="531" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="298" y="536" font-size="14" font-weight="600" fill="{{TEXT}}">Linux</text>
    </g>
    <g class="pop" style="animation-delay:1.45s">
      <rect x="361" y="516" width="71" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="375" cy="531" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="385" y="536" font-size="14" font-weight="600" fill="{{TEXT}}">Arch</text>
    </g>
    <g class="pop" style="animation-delay:1.46s">
      <rect x="442" y="516" width="86" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="456" cy="531" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="466" y="536" font-size="14" font-weight="600" fill="{{TEXT}}">Ubuntu</text>
    </g>
    <g class="pop" style="animation-delay:1.48s">
      <rect x="539" y="516" width="59" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="553" cy="531" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="563" y="536" font-size="14" font-weight="600" fill="{{TEXT}}">Git</text>
    </g>
    <g class="pop" style="animation-delay:1.50s">
      <rect x="608" y="516" width="140" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="622" cy="531" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="632" y="536" font-size="14" font-weight="600" fill="{{TEXT}}">GitHub Actions</text>
    </g>
    <rect x="40" y="556" width="880" height="1" fill="{{MAIN}}" fill-opacity="0.14"/>

    <g class="pop" style="animation-delay:0.87s">
      <rect x="40" y="568" width="210" height="70" rx="14" fill="url(#tile)"/>
      <g transform="translate(56 593)"><path d="M10 1 L12 8 L19 10 L12 12 L10 19 L8 12 L1 10 L8 8 Z" fill="white"/></g>
      <text x="88" y="608" font-size="15" font-weight="800" fill="white">AI</text>
    </g>
    <g class="pop" style="animation-delay:1.63s">
      <rect x="274" y="568" width="125" height="30" rx="15" fill="url(#solid)" />
      <circle cx="288" cy="583" r="3" fill="black" opacity="0.8"/>
      <text x="298" y="588" font-size="14" font-weight="800" fill="black">MCP servers</text>
    </g>
    <g class="pop" style="animation-delay:1.65s">
      <rect x="409" y="568" width="85" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="423" cy="583" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="433" y="588" font-size="14" font-weight="600" fill="{{TEXT}}">Claude</text>
    </g>
    <g class="pop" style="animation-delay:1.66s">
      <rect x="504" y="568" width="93" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="518" cy="583" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="528" y="588" font-size="14" font-weight="600" fill="{{TEXT}}">OpenAI</text>
    </g>
    <g class="pop" style="animation-delay:1.67s">
      <rect x="607" y="568" width="83" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="621" cy="583" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="631" y="588" font-size="14" font-weight="600" fill="{{TEXT}}">Gemini</text>
    </g>
    <g class="pop" style="animation-delay:1.69s">
      <rect x="700" y="568" width="84" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="714" cy="583" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="724" y="588" font-size="14" font-weight="600" fill="{{TEXT}}">Mistral</text>
    </g>
    <g class="pop" style="animation-delay:1.71s">
      <rect x="794" y="568" width="83" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="808" cy="583" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="818" y="588" font-size="14" font-weight="600" fill="{{TEXT}}">Ollama</text>
    </g>
    <g class="pop" style="animation-delay:1.72s">
      <rect x="274" y="608" width="117" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="288" cy="623" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="298" y="628" font-size="14" font-weight="600" fill="{{TEXT}}">OpenRouter</text>
    </g>
    <g class="pop" style="animation-delay:1.73s">
      <rect x="401" y="608" width="109" height="30" rx="15" fill="{{MAIN}}" fill-opacity="0.10" stroke="{{MAIN}}" stroke-opacity="0.5" stroke-width="1.2"/>
      <circle cx="415" cy="623" r="3" fill="{{MAIN}}" opacity="0.8"/>
      <text x="425" y="628" font-size="14" font-weight="600" fill="{{TEXT}}">AI agents</text>
    </g>
    <g transform="translate(700 0) scale(0.5)" fill="{{SOFT}}"><use class="fall" href="#p" xlink:href="#p" style="animation-duration:14s;animation-delay:-4s"/></g>
    <g transform="translate(860 0) scale(0.6)" fill="{{MAIN}}"><use class="fall" href="#p" xlink:href="#p" style="animation-duration:18s;animation-delay:-11s"/></g>
    <g transform="translate(470 0) scale(0.4)" fill="{{LIGHT}}"><use class="fall" href="#p" xlink:href="#p" style="animation-duration:20s;animation-delay:-15s"/></g>
    <rect x="1" y="1" width="958" height="692" rx="22" fill="none" stroke="{{MAIN}}" stroke-opacity="0.45" stroke-width="2"/>
  </g>
</svg>
