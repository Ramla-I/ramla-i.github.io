#!/usr/bin/env bash
#
# build-cv.sh — render an HTML CV document to PDF using headless Chrome.
#
# Usage:
#   ./build-cv.sh [input.html] [output.pdf]
#
# Defaults: input  = cv-source.html
#           output = cv.pdf
# Run it from the folder containing the files, or pass absolute paths.
#
# Edit cv-source.html, then re-run this script to regenerate cv.pdf.

set -euo pipefail

# Resolve paths relative to this script's directory so it works from anywhere.
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INPUT="${1:-$DIR/cv-source.html}"
OUTPUT="${2:-$DIR/cv.pdf}"

# Locate a Chrome/Chromium binary across platforms.
CHROME=""
for c in \
  "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  "/Applications/Chromium.app/Contents/MacOS/Chromium" \
  "$(command -v google-chrome || true)" \
  "$(command -v google-chrome-stable || true)" \
  "$(command -v chromium || true)" \
  "$(command -v chromium-browser || true)"; do
  if [[ -n "$c" && -x "$c" ]]; then CHROME="$c"; break; fi
done

if [[ -z "$CHROME" ]]; then
  echo "Error: could not find Chrome or Chromium. Install Google Chrome and retry." >&2
  exit 1
fi

if [[ ! -f "$INPUT" ]]; then
  echo "Error: input file not found: $INPUT" >&2
  exit 1
fi

echo "Rendering $INPUT -> $OUTPUT"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$OUTPUT" "file://$INPUT" 2>/dev/null

echo "Done: $OUTPUT"
