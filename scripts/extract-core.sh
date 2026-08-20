#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
base64 -d scripts/aidisc-src.tgz.b64 | tar xzf -
echo "Extracted core files."
