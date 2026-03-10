#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ICONS_LIST="${ICONS_LIST:-$ROOT_DIR/scripts/ios-status-icons-list.txt}"
OUTPUT_DIR="${OUTPUT_DIR:-$ROOT_DIR/public/ios-status}"
SF_SYMBOLS_SVG_DIR="${SF_SYMBOLS_SVG_DIR:-/tmp/sf-symbols-svg}"
SF_PRO_FONTS_DIR="${SF_PRO_FONTS_DIR:-/tmp/sf-pro-fonts}"
SF_VERSION="${SF_VERSION:-7.2}"

if [[ ! -f "$ICONS_LIST" ]]; then
  echo "icons list not found: $ICONS_LIST" >&2
  exit 1
fi

if [[ ! -d "$SF_SYMBOLS_SVG_DIR" ]]; then
  echo "sf-symbols-svg directory not found: $SF_SYMBOLS_SVG_DIR" >&2
  echo "Clone it first: git clone https://github.com/MoOx/sf-symbols-svg $SF_SYMBOLS_SVG_DIR" >&2
  exit 1
fi

if [[ ! -f "$SF_PRO_FONTS_DIR/SF-Pro-Text-Regular.otf" ]]; then
  echo "SF Pro Text font files not found in: $SF_PRO_FONTS_DIR" >&2
  echo "Expected at least SF-Pro-Text-Regular.otf" >&2
  exit 1
fi

mkdir -p "$OUTPUT_DIR"

node --experimental-strip-types "$SF_SYMBOLS_SVG_DIR/src/index.ts" \
  --icons-list "$ICONS_LIST" \
  --fonts-dir "$SF_PRO_FONTS_DIR" \
  --weight regular \
  --sf-version "$SF_VERSION" \
  --output "$OUTPUT_DIR"

echo "Generated iOS status icons in $OUTPUT_DIR"
