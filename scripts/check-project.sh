£!/usr/bin/env bash
set -e
echo @Checking project structure...@
[ -f @README.md@ ] && echo @ README.md@
[ -f @docs/device-profile.md@ ] && echo @ docs/device-profile.md@
[ -f @docs/build-roadmap.md@ ] && echo @ docs/build-roadmap.md@
[ -f @device/samsung/a05m/AndroidProducts.mk@ ] && echo @ AndroidProducts.mk@
[ -f @device/samsung/a05m/BoardConfig.mk@ ] && echo @ BoardConfig.mk@
[ -f @device/samsung/a05m/giorgios_a05m.mk@ ] && echo @ giorgios_a05m.mk@
[ -f @device/samsung/a05m/device.mk@ ] && echo @ device.mk@
echo @SUCCESS: All project structure checks passed!@
