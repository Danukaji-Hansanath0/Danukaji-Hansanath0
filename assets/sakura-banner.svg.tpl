<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1200 320" width="1200" height="320">
  <defs>
    <radialGradient id="glow" cx="50%" cy="50%" r="70%">
      <stop offset="0%" stop-color="{{GLOW}}" stop-opacity="0.45"/>
      <stop offset="100%" stop-color="{{BG}}" stop-opacity="0"/>
    </radialGradient>
    <linearGradient id="ink" x1="0" x2="1">
      <stop offset="0%" stop-color="{{LIGHT}}"/>
      <stop offset="50%" stop-color="{{MAIN}}"/>
      <stop offset="100%" stop-color="{{SOFT}}"/>
    </linearGradient>
    <filter id="soft"><feGaussianBlur stdDeviation="8"/></filter>
    <clipPath id="card"><rect width="1200" height="320" rx="24"/></clipPath>
    <path id="petal" d="M0 0C-12-6-11-19-3-21L0-17L3-21C11-19 12-6 0 0Z"/>
    <g id="flower">
      <use href="#petal" xlink:href="#petal"/>
      <use href="#petal" xlink:href="#petal" transform="rotate(72)"/>
      <use href="#petal" xlink:href="#petal" transform="rotate(144)"/>
      <use href="#petal" xlink:href="#petal" transform="rotate(216)"/>
      <use href="#petal" xlink:href="#petal" transform="rotate(288)"/>
      <circle r="4" fill="lightyellow" stroke="{{STRONG}}" stroke-width="1.5"/>
    </g>
  </defs>

  <style>
    .fall { animation: fall linear infinite; transform-box: fill-box; transform-origin: center; }
    .spin { animation: spin 24s linear infinite; transform-box: fill-box; transform-origin: center; }
    .pulse { animation: pulse 4s ease-in-out infinite; }
    @keyframes fall {
      0%   { transform: translate(0, -40px) rotate(0deg); opacity: 0; }
      10%  { opacity: 0.95; }
      50%  { transform: translate(70px, 160px) rotate(270deg); }
      90%  { opacity: 0.95; }
      100% { transform: translate(40px, 380px) rotate(540deg); opacity: 0; }
    }
    @keyframes spin { to { transform: rotate(360deg); } }
    @keyframes pulse { 0%, 100% { opacity: 0.35; } 50% { opacity: 0.85; } }
    .bob { animation: bob 3s ease-in-out infinite; }
    .blink { animation: blink 4s infinite; transform-box: fill-box; transform-origin: center; }
    .tail { animation: tail 2.2s ease-in-out infinite alternate; }
    @keyframes bob { 0%, 100% { transform: translateY(0); } 50% { transform: translateY(-3px); } }
    @keyframes blink { 0%, 92%, 100% { transform: scaleY(1); } 95% { transform: scaleY(0.1); } }
    @keyframes tail { from { transform: rotate(-10deg); } to { transform: rotate(14deg); } }
  </style>

  <g clip-path="url(#card)">
    <rect width="1200" height="320" fill="{{BG}}"/>
    <rect width="1200" height="320" fill="url(#glow)"/>

    <!-- branches -->
    <path d="M-10 40 C120 60 200 30 300 70 M150 52 C170 80 200 95 225 105" stroke="sienna" stroke-width="5" fill="none" stroke-linecap="round" opacity="0.6"/>
    <path d="M1210 290 C1100 275 1040 300 960 275 M1080 285 C1060 255 1030 245 1010 238" stroke="sienna" stroke-width="5" fill="none" stroke-linecap="round" opacity="0.6"/>
    <g fill="{{MAIN}}"><use href="#flower" xlink:href="#flower" transform="translate(300 70) scale(1.3)"/></g>
    <g fill="{{SOFT}}"><use href="#flower" xlink:href="#flower" transform="translate(225 105)"/></g>
    <g fill="{{LIGHT}}"><use href="#flower" xlink:href="#flower" transform="translate(120 52) scale(0.9)"/></g>
    <g fill="{{MAIN}}"><use href="#flower" xlink:href="#flower" transform="translate(960 275) scale(1.3)"/></g>
    <g fill="{{SOFT}}"><use href="#flower" xlink:href="#flower" transform="translate(1010 238)"/></g>
    <g fill="{{LIGHT}}"><use href="#flower" xlink:href="#flower" transform="translate(1110 282) scale(0.9)"/></g>

    <!-- big spinning blossoms -->
    <g transform="translate(70 250) scale(2.6)" fill="{{MUTED}}" opacity="0.5"><use class="spin" href="#flower" xlink:href="#flower"/></g>
    <g transform="translate(1130 60) scale(2.6)" fill="{{MUTED}}" opacity="0.5"><use class="spin" href="#flower" xlink:href="#flower"/></g>

    <!-- title -->
    <text x="600" y="160" text-anchor="middle" font-family="Segoe UI, Helvetica, Arial, sans-serif" font-size="66" font-weight="800" fill="{{MAIN}}" filter="url(#soft)" class="pulse">Danukaji Hansanath</text>
    <text x="600" y="160" text-anchor="middle" font-family="Segoe UI, Helvetica, Arial, sans-serif" font-size="66" font-weight="800" fill="url(#ink)">Danukaji Hansanath</text>
    <text x="600" y="210" text-anchor="middle" font-family="Segoe UI, Helvetica, Arial, sans-serif" font-size="20" letter-spacing="4" fill="{{SOFT}}">SOFTWARE ENGINEER · JAVA · SPRING · KUBERNETES</text>
    <text x="600" y="248" text-anchor="middle" font-family="Segoe UI, Helvetica, Arial, sans-serif" font-size="16" fill="{{MUTED}}">~ building things that bloom ~</text>


    <!-- original mascot: a little sakura kitten sitting on the branch -->
    <g transform="translate(1062 279)">
      <g class="bob">
        <g transform="translate(18 -12)"><path class="tail" d="M0 0 C22 -2 28 -28 16 -40" fill="none" stroke="{{TEXT}}" stroke-width="8" stroke-linecap="round"/></g>
        <ellipse cx="0" cy="-22" rx="24" ry="22" fill="{{TEXT}}" stroke="{{MUTED}}" stroke-width="1.5"/>
        <ellipse cx="-10" cy="-2" rx="7" ry="4" fill="white" stroke="{{MUTED}}" stroke-width="1.2"/>
        <ellipse cx="10" cy="-2" rx="7" ry="4" fill="white" stroke="{{MUTED}}" stroke-width="1.2"/>
        <path d="M-25 -68 L-21 -97 L-3 -84 Z" fill="{{TEXT}}" stroke="{{MUTED}}" stroke-width="1.5" stroke-linejoin="round"/>
        <path d="M25 -68 L21 -97 L3 -84 Z" fill="{{TEXT}}" stroke="{{MUTED}}" stroke-width="1.5" stroke-linejoin="round"/>
        <path d="M-20 -74 L-18 -90 L-8 -83 Z" fill="{{MAIN}}"/>
        <path d="M20 -74 L18 -90 L8 -83 Z" fill="{{MAIN}}"/>
        <circle cx="0" cy="-58" r="28" fill="{{TEXT}}" stroke="{{MUTED}}" stroke-width="1.5"/>
        <ellipse class="blink" cx="-10" cy="-60" rx="3.6" ry="4.8" fill="black"/>
        <ellipse class="blink" cx="10" cy="-60" rx="3.6" ry="4.8" fill="black"/>
        <circle cx="-8.8" cy="-62" r="1.3" fill="white"/>
        <circle cx="11.2" cy="-62" r="1.3" fill="white"/>
        <ellipse cx="-18" cy="-50" rx="5" ry="3" fill="{{MAIN}}" opacity="0.6"/>
        <ellipse cx="18" cy="-50" rx="5" ry="3" fill="{{MAIN}}" opacity="0.6"/>
        <path d="M-5 -50 Q-2.5 -46.5 0 -50 Q2.5 -46.5 5 -50" fill="none" stroke="{{STRONG}}" stroke-width="1.6" stroke-linecap="round"/>
        <g transform="translate(15 -84) scale(0.42)" fill="{{MAIN}}"><use href="#flower" xlink:href="#flower"/></g>
      </g>
    </g>

    <!-- falling petals -->
    <g transform="translate(40 0)"   fill="{{MAIN}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:9s;animation-delay:-1s"/></g>
    <g transform="translate(110 0) scale(0.8)" fill="{{SOFT}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:12s;animation-delay:-6s"/></g>
    <g transform="translate(190 0)"  fill="{{LIGHT}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:10s;animation-delay:-3s"/></g>
    <g transform="translate(270 0) scale(1.2)" fill="{{MUTED}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:13s;animation-delay:-8s"/></g>
    <g transform="translate(350 0)"  fill="{{MAIN}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:11s;animation-delay:-5s"/></g>
    <g transform="translate(430 0) scale(0.7)" fill="{{SOFT}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:9s;animation-delay:-7s"/></g>
    <g transform="translate(510 0)"  fill="{{LIGHT}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:14s;animation-delay:-2s"/></g>
    <g transform="translate(590 0) scale(0.9)" fill="{{MAIN}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:10s;animation-delay:-9s"/></g>
    <g transform="translate(670 0)"  fill="{{SOFT}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:12s;animation-delay:-4s"/></g>
    <g transform="translate(750 0) scale(1.1)" fill="{{MUTED}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:9s;animation-delay:-6s"/></g>
    <g transform="translate(830 0)"  fill="{{LIGHT}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:13s;animation-delay:-1s"/></g>
    <g transform="translate(910 0) scale(0.8)" fill="{{MAIN}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:11s;animation-delay:-10s"/></g>
    <g transform="translate(990 0)"  fill="{{SOFT}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:10s;animation-delay:-5s"/></g>
    <g transform="translate(1070 0) scale(1.2)" fill="{{LIGHT}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:12s;animation-delay:-3s"/></g>
    <g transform="translate(1140 0)" fill="{{MAIN}}"><use class="fall" href="#petal" xlink:href="#petal" style="animation-duration:9s;animation-delay:-8s"/></g>

    <rect x="1" y="1" width="1198" height="318" rx="24" fill="none" stroke="{{MAIN}}" stroke-opacity="0.45" stroke-width="2"/>
  </g>
</svg>
