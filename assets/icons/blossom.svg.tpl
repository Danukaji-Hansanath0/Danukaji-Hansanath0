<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 48 48" width="48" height="48">
  <defs>
    <linearGradient id="g" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0" stop-color="{{STRONG}}"/>
      <stop offset="1" stop-color="{{LIGHT}}"/>
    </linearGradient>
    <path id="p" d="M0 0C-12-6-11-19-3-21L0-17L3-21C11-19 12-6 0 0Z" fill="url(#g)"/>
  </defs>
  <style>
    .spin { animation: spin 14s linear infinite; }
    @keyframes spin { to { transform: rotate(360deg); } }
  </style>
  <g transform="translate(24 25)">
    <g class="spin">
      <use href="#p" xlink:href="#p"/>
      <use href="#p" xlink:href="#p" transform="rotate(72)"/>
      <use href="#p" xlink:href="#p" transform="rotate(144)"/>
      <use href="#p" xlink:href="#p" transform="rotate(216)"/>
      <use href="#p" xlink:href="#p" transform="rotate(288)"/>
      <circle r="4.5" fill="lightyellow" stroke="{{STRONG}}" stroke-width="1.5"/>
    </g>
  </g>
</svg>
