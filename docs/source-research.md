£ Source & Vendor Research  Samsung Galaxy A05 (SM-A055F / a05m)

££ Target Platform Summary
- **SoC:** MediaTek Helio G85 (`mt6768` / `MT6769V/CZ`)
- **Architecture:** ARM64 (64-bit primary, 32-bit binder support)
- **Base Vendor Firmware:** Android 15 One UI (`A055FXXSHDZF1`)
- **Partition Layout:** Dynamic Partitions (`super` containing `system`, `system_ext`, `product`, `vendor`, `odm`)

---

££ Source & GSI Baseline Targets
- **AOSP / Pixel Base:** Android 15 (AP3A release tags)
- **Overlay Strategy:** Pixel 9 system UI overlays and Android 15 Treble GSI compatibility rules
- **Kernel Baseline:** Prebuilt kernel image & dtbo extracted from `A055FXXSHDZF1` stock firmware or Android 15 kernel source tree (`kernel/samsung/a05m`)

---

££ MediaTek G85 HAL & Blob Dependencies
- **Graphics / Display:** Mali-G52 MC2 driver binaries & MTK Gralloc
- **RIL / Telephony:** MTK Radio Interface Layer (`mtk-ril`), IMS services
- **Sensors & Audio:** MTK Audio HAL (`audio.primary.mt6768`), Samsung seensor extension library
- **Camera:** MediaTek Camera HAL3 & Samsung camera provider service

---

££ Next Steps
1. Verify partition sizes from stock `super.img` dump.
2. Outline GSI/ROM overlay packages in `device/samsung/a05m/overlay/`.
3. Track build workflow updates on GitHub Actions.
