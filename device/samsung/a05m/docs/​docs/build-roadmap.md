# GiorgiOS Pixel 9 Edition - Development & Build Roadmap

Target Device: **Samsung Galaxy A05 (SM-A055F, codename `a05m`)**

This document outlines the step-by-step roadmap for investigating, structuring, and developing the **GiorgiOS Pixel 9 Edition** custom Android system project. This project prioritizes hardware protection, structural verification, and honest technical assessment over premature flashing.

---

## 📌 Phase 1: Repository Setup and Validation
- [x] Create initial repository structure and core documentation.
- [ ] Add project validation script (`scripts/check-project.sh`) to verify file integrity locally.
- [ ] Configure GitHub Actions workflow (`.github/workflows/build.yml`) for automated repository validation.

> **Note on CI Validation**: A green (passing) GitHub Actions check **does not mean an Android ROM was compiled**. It only confirms that the repository layout, configuration scripts, and documentation comply with project rules.

---

## 📌 Phase 2: Device & Firmware Identification
- [ ] Document exact firmware build fingerprint (`ro.build.fingerprint`) from stock Android base.
- [ ] Verify exact SoC variant (MediaTek Helio G85 / `mt6768` family) and target architecture (`arm64-v8a`).
- [ ] Check dynamic partition sizes (`super` partition layout, `system`, `vendor`, `product`, `odm`).
- [ ] Verify Android Verified Boot (AVB) status, `vbmeta` flags, and bootloader lock state.

---

## 📌 Phase 3: Hardware & Source Component Research
- [ ] Search for official Samsung open-source kernel releases corresponding to the SM-A055F base.
- [ ] Investigate community efforts for `a05m` device trees, vendor trees, and kernel sources.
- [ ] Evaluate GSI (Generic System Image) baseline overlays vs. pure source-compiled trees.

> **GSI Compatibility Reality**: The presence of Project Treble and dynamic partitions does **not** guarantee that a GSI will boot on MediaTek Samsung hardware. Proprietary HALs, display drivers, audio drivers, and RIL (cellular network) dependencies must match the underlying vendor implementation.

---

## 📌 Phase 4: Base Selection & Build Environment Planning
- [ ] Evaluate compute requirements for full Android/AOSP compilation (requires 250 GB+ SSD, 16 GB+ RAM, multi-core CPU).
- [ ] Determine cloud infrastructure strategy (GitHub Actions runners have ~14 GB free disk space, which is insufficient for full AOSP compilation).
- [ ] Select target Pixel-inspired Android source base (e.g., PixelExperience / LineageOS with Pixel overlays) once build host resources are secured.

---

## 📌 Phase 5: Build Execution & Artifact Verification
- [ ] Configure build environment and toolchains.
- [ ] Execute target compilation commands (`make`, `m kaosp`, or GSI overlay builder).
- [ ] Verify generated build artifacts (`system.img`, `boot.img`, or `super.img`) and confirm image integrity via checksums.

---

## 📌 Phase 6: Safety, Recovery & Flashing Plan
- [ ] Obtain matching official stock firmware (`Odin` package for SM-A055F) for emergency restoration.
- [ ] Confirm working access to Samsung Download Mode and recovery options.
- [ ] Verify backup of critical device-unique partitions (NVRAM / NVDATA / EFS).
- [ ] Draft verified flashing procedure **only after safety prerequisites are met**.

---

## 📌 Phase 7: Device Testing & Iteration (TODO)
- [ ] Test boot sequence and logcat output.
- [ ] Validate core hardware functions (Touchscreen, Wi-Fi, Bluetooth, Audio, RIL/Calls, Camera).
- [ ] Iterate on bug fixes, vendor patch overlays, and system optimizations.

---

## ⚠️ Current Status
**Phase 1 is currently in progress.** No system image has been built, and no flashing should be attempted.
