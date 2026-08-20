#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
# Prefer complete zip if present; otherwise join base64 parts
if [[ -f aidisc-v1.2.3.zip ]]; then
  unzip -o aidisc-v1.2.3.zip -d aidisc-v1.2.3
elif ls p*.b64 >/dev/null 2>&1; then
  cat p0.b64 p1.b64 p2.b64 p3.b64 p4.b64 p5.b64 p6.b64 p7.b64 p8.b64 p9.b64 2>/dev/null | base64 -d > aidisc-v1.2.3.zip
  unzip -o aidisc-v1.2.3.zip -d aidisc-v1.2.3
else
  echo "Missing package parts. Download aidisc-v1.2.3.zip and place it here."
  exit 1
fi
echo "OK: $ROOT/aidisc-v1.2.3"
echo "Chrome -> chrome://extensions -> Load unpacked -> select that folder"
