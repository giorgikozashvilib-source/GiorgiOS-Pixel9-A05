# Device Profile: Samsung Galaxy A05 (SM-A055F / `a05m`)

This document outlines the confirmed hardware specifications and stock environment for the Samsung Galaxy A05 based on direct prop queries from the target hardware.

---

## 📱 Hardware & Verified Environment

### Verified System Environment
- **Device Model**: Samsung Galaxy A05 (`SM-A055F`)
- **Device Codename**: `a05m` / `a05mxx`
- **Build Fingerprint**: `samsung/a05mxx/a05m:15/AP3A.240905.015.A2/A055FXXSHDZF1:user/release-keys`
- **Stock Base Version**: Android 15 (One UI 7 Base)
- **Baseband / Firmware Revision**: `A055FXXSHDZF1`
- **Kernel Stream**: Linux Kernel 6.6 (`6.6.89-android15-8-abA055FXXSHDZF1-4k`)
- **Architecture**: ARM64 (`arm64-v8a`)
- **Platform / SoC Family**: MediaTek Helio G85 (`mt6768` / `MT6769V/CZ`)

### Hardware Profile
- **Partition Structure**: Dynamic Partitions (`super` partition layout: `system`, `vendor`, `product`, `odm`)
- **Treble Status**: Treble-compliant base structure (System-as-Root implementation)

---

## ❓ Critical Unknowns & Build Prerequisites

Before any source compilation or flashing attempt, the following components require verification against this exact `A055FXXSHDZF1` firmware base:

1. **Vendor Binary Alignment**: Proprietary HAL binaries extracted must match Android 15 / Kernel 6.6 interfaces to prevent display, camera, audio, or RIL failure.
2. **AVB / Partition Limits**: Exact byte limits for `super` dynamic partition sub-volumes under `A055FXXSHDZF1`.
3. **Custom Tree Verification**: Verified, working AOSP device tree (`device/samsung/a05m`) structured for Android 15.

---

## ⚡ GSI & Treble Compatibility Realities

While the device supports Project Treble and dynamic partitioning:
- **Kernel Enforcement**: Kernel 4.19 builds created for older Android 13/14 stock bases are **incompatible** with this device's current bootloader revision (`A055FXXS...`).
- **MediaTek Vendor HALs**: Display, audio, camera, and cellular networks rely on OEM-specific vendor blobs. A generic system build requires exact vendor-interface alignment.

---

## 🛡️ Project Safety

- **No ROM Binary Built**: No compiled system images or flashable archives exist at this phase.
- **Stock Protection**: Do not modify system partitions without confirmed recovery access and complete stock firmware backups (`Odin` flashable files matching `A055FXXSHDZF1`).
