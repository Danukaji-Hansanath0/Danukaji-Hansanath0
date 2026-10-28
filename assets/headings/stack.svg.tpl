<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 960 70" width="960" height="70">
  <defs>
    <linearGradient id="ink" x1="0" x2="1">
      <stop offset="0" stop-color="{{MAIN}}"/>
      <stop offset="1" stop-color="{{LIGHT}}"/>
    </linearGradient>
    <linearGradient id="rule" x1="0" x2="1">
      <stop offset="0" stop-color="{{STRONG}}"/>
      <stop offset="0.6" stop-color="{{MAIN}}" stop-opacity="0.35"/>
      <stop offset="1" stop-color="{{MAIN}}" stop-opacity="0"/>
    </linearGradient>
    <path id="hp" d="M0 0C-12-6-11-19-3-21L0-17L3-21C11-19 12-6 0 0Z"/>
  </defs>
  <style>
    .drift { animation: drift linear infinite; transform-box: fill-box; transform-origin: center; }
    @keyframes drift {
      0%   { transform: translate(0, 0) rotate(0deg); opacity: 0; }
      15%  { opacity: 0.9; }
      85%  { opacity: 0.9; }
      100% { transform: translate(620px, 10px) rotate(540deg); opacity: 0; }
    }
  </style>
  <g transform="translate(4 6) scale(0.95)">
  <defs>
    <linearGradient id="ig" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0" stop-color="{{LIGHT}}"/>
      <stop offset="1" stop-color="{{STRONG}}"/>
    </linearGradient>
  </defs>
  <style>
    .sway { animation: sway 3s ease-in-out infinite alternate; }
    @keyframes sway { from { transform: rotate(-18deg); } to { transform: rotate(18deg); } }
  </style>
  <path d="M16 15 L6 25 L16 35 M32 15 L42 25 L32 35 M27 11 L21 39" fill="none" stroke="url(#ig)" stroke-width="4.5" stroke-linecap="round" stroke-linejoin="round"/>
  <g transform="translate(40 12) scale(0.42)">
    <path class="sway" d="M0 0C-12-6-11-19-3-21L0-17L3-21C11-19 12-6 0 0Z" fill="{{MAIN}}"/>
  </g>
</g>
  <text x="66" y="44" font-family="Segoe UI, Helvetica, Arial, sans-serif" font-size="30" font-weight="800" fill="url(#ink)">Tech stack</text>
  <rect x="0" y="62" width="960" height="2.5" rx="1.25" fill="url(#rule)"/>
  <g transform="translate(200 62) scale(0.4)" fill="{{MAIN}}"><use class="drift" href="#hp" xlink:href="#hp" style="animation-duration:11s;animation-delay:-3s"/></g>
  <g transform="translate(260 67) scale(0.3)" fill="{{LIGHT}}"><use class="drift" href="#hp" xlink:href="#hp" style="animation-duration:15s;animation-delay:-9s"/></g>
</svg>
