#!/usr/bin/env bash
set -euo pipefail

echo "=================================================="
echo "  GiorgiOS Pixel 9 Edition - Project Check Script "
echo "=================================================="
echo "Running validation checks on repository structure..."
echo ""

# Define required files
REQUIRED_FILES=(
  "README.md"
  "docs/device-profile.md"
  "docs/build-roadmap.md"
)

# 1. Check existence and non-empty status of required files
for file in "${REQUIRED_FILES[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "❌ ERROR: Required file missing: $file"
    exit 1
  fi

  if [[ ! -s "$file" ]]; then
    echo "❌ ERROR: Required file is empty: $file"
    exit 1
  fi
  echo "✓ Verified file: $file"
done

# 2. Check docs/device-profile.md for required target identifiers
DEVICE_PROFILE="docs/device-profile.md"

if ! grep -q "SM-A055F" "$DEVICE_PROFILE"; then
  echo "❌ ERROR: Identifier 'SM-A055F' not found in $DEVICE_PROFILE"
  exit 1
fi

if ! grep -q "a05m" "$DEVICE_PROFILE"; then
  echo "❌ ERROR: Codename 'a05m' not found in $DEVICE_PROFILE"
  exit 1
fi
echo "✓ Verified device identifiers ('SM-A055F', 'a05m') in $DEVICE_PROFILE"

echo ""
echo "=================================================="
echo " SUCCESS: All project structure checks passed!"
echo " Note: This check validates repository structure only."
echo " No ROM has been compiled or modified."
echo "=================================================="
exit 0
