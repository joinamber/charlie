#!/usr/bin/env bash
# Renders each carousel to three 1080x1350 PNGs and one PDF (for LinkedIn document posts).
# Usage: CHROME=/path/to/chrome-or-headless_shell ./render.sh   (Python 3 with Pillow required)
set -euo pipefail
cd "$(dirname "$0")"
CHROME="${CHROME:-chromium}"
FLAGS=(--headless --no-sandbox --disable-gpu --hide-scrollbars --virtual-time-budget=4000)

for n in 1 2 3; do
  src="$PWD/src/carousel-$n.html"
  out="carousel-$n"
  mkdir -p "$out"
  for p in 1 2 3; do
    "$CHROME" "${FLAGS[@]}" --force-device-scale-factor=2 --window-size=1080,1350 \
      --screenshot="$out/slide-$p@2x.png" "file://$src#p$p" 2>/dev/null
    python3 -c "from PIL import Image; Image.open('$out/slide-$p@2x.png').resize((1080,1350), Image.LANCZOS).save('$out/slide-$p.png', optimize=True)"
    rm "$out/slide-$p@2x.png"
  done
  "$CHROME" "${FLAGS[@]}" --no-pdf-header-footer --print-to-pdf="$out/carousel-$n.pdf" "file://$src" 2>/dev/null
done
