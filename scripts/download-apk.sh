#!/usr/bin/env bash
cd "$(dirname "$0")/.." || exit 1
set -euo pipefail

url="https://gpsjoystick.theappninjas.com/download/gpsjoystick-unlocked-arm64-v8a.apk"
to_dir="system/priv-app"

echo "Downloading GPS Joystick APK..."
curl -L -o "$to_dir/gpsjoystick-unlocked-arm64-v8a.apk" "$url"
