#!/usr/bin/env bash
cd "$(dirname "$0")/.." || exit 1
set -euo pipefail

rm -vrf dist
mkdir -v dist
target_file="dist/gpsjoystick-magisk.zip"

# ensure filemod
chmod 0644 "system/priv-app/gpsjoystick-unlocked-arm64-v8a.apk"
chmod 0644 "system/etc/permissions/privapp-permissions-com.theappninjas.fakegpsjoystick.xml"

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
