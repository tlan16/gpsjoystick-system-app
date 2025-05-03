#!/usr/bin/env bash
cd "$(dirname "$0")/.." || exit 1
set -euo pipefail

rm -vrf dist
mkdir -v dist
target_file="dist/gpsjoystick-magisk.zip"

echo "Building magisk zip..."
# zip everything except .git .idea scripts folder
zip -r9 -v \
"$target_file" \
. \
-x "*.git*" \
  "*.idea*" \
  "scripts/*" \
  "dist/*" \
;
