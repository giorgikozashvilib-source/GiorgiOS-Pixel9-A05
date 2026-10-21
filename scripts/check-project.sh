£!/usr/bin/env bash
set -e

echo @==================================================@
echo @  GiorgiOS Pixel 9 Edition - Project Check Script @
echo @==================================================@
echo @Running validation checks on repository structure...@
echo @@

REQUIRED_FILES=@README.md docs/device-profile.md docs/build-roadmap.md docs/source-research.md gsi/giorgios_gsi_arm64.mk device/samsung/a05m/AndroidProducts.mk device/samsung/a05m/BoardConfig.mk device/samsung/a05m/giorgios_a05m.mk device/samsung/a05m/device.mk@

for file in $REQUIRED_FILES; do
  if [ -f @$file@ ]; then
    echo @ Verified file: $file@
  else
    echo @ Missing required file: $file@
    exit 1
  fi
done

if grep -q @SM-A055F@ docs/device-profile.md && grep -q @a05m@ docs/device-profile.md; then
  echo @ Verified device identifiers in docs/device-profile.md@
else
  echo @ Device profile missing target identifiers@
  exit 1
fi

echo @@
echo @==================================================@
echo @ SUCCESS: All project structure checks passed!@
echo @ Note: This check validates repository structure only.@
echo @ No ROM has been compiled or modified.@
echo @==================================================@
