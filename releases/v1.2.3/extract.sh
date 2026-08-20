#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
cat part0.b64 part1.b64 part2.b64 part3.b64 | base64 -d > aidisc-v1.2.3.zip
unzip -o aidisc-v1.2.3.zip -d aidisc-v1.2.3
echo "OK: $ROOT/aidisc-v1.2.3"
echo "Chrome -> chrome://extensions -> Load unpacked -> select that folder"
