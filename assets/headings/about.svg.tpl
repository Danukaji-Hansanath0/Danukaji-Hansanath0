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
    <linearGradient id="ig" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0" stop-color="{{STRONG}}"/>
      <stop offset="1" stop-color="{{LIGHT}}"/>
    </linearGradient>
    <path id="ip" d="M0 0C-12-6-11-19-3-21L0-17L3-21C11-19 12-6 0 0Z" fill="url(#ig)"/>
  </defs>
  <style>
    .spin { animation: spin 14s linear infinite; }
    @keyframes spin { to { transform: rotate(360deg); } }
  </style>
  <g transform="translate(24 25)">
    <g class="spin">
      <use href="#ip" xlink:href="#ip"/>
      <use href="#ip" xlink:href="#ip" transform="rotate(72)"/>
      <use href="#ip" xlink:href="#ip" transform="rotate(144)"/>
      <use href="#ip" xlink:href="#ip" transform="rotate(216)"/>
      <use href="#ip" xlink:href="#ip" transform="rotate(288)"/>
      <circle r="4.5" fill="lightyellow" stroke="{{STRONG}}" stroke-width="1.5"/>
    </g>
  </g>
</g>
  <text x="66" y="44" font-family="Segoe UI, Helvetica, Arial, sans-serif" font-size="30" font-weight="800" fill="url(#ink)">About me</text>
  <rect x="0" y="62" width="960" height="2.5" rx="1.25" fill="url(#rule)"/>
  <g transform="translate(200 62) scale(0.4)" fill="{{MAIN}}"><use class="drift" href="#hp" xlink:href="#hp" style="animation-duration:11s;animation-delay:-3s"/></g>
  <g transform="translate(260 67) scale(0.3)" fill="{{LIGHT}}"><use class="drift" href="#hp" xlink:href="#hp" style="animation-duration:15s;animation-delay:-9s"/></g>
</svg>
