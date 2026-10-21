# Source Code & Component Research: Samsung Galaxy A05 (`a05m`)

This document analyzes the current open-source landscape, official vendor repositories, community efforts, and compute requirements for building custom Android systems targetting the **Samsung Galaxy A05 (SM-A055F, codename `a05m`)**.

---

## 🔍 Investigation of Base Repositories

### 1. Official Samsung Open Source (`opensource.samsung.com`)
- **URL**: [https://opensource.samsung.com/](https://opensource.samsung.com/)
- **Purpose**: Official source distribution center for GPL-licensed kernel releases and kernel module sources.
- **Status & Findings**:
  - Samsung publishes kernel tarballs corresponding to release builds (e.g., `SM-A055F` kernel releases for Android 13/14/15 base revisions).
  - **Limitations**: Provides only kernel source code and display/driver module trees. It **does not** contain proprietary userspace vendor blobs, HAL implementations, or device tree logic required for full AOSP framework builds.

### 2. Community Organization: `Samsung-Galaxy-A05`
- **URL**: [https://github.com/Samsung-Galaxy-A05](https://github.com/Samsung-Galaxy-A05)
- **Purpose**: Community-managed GitHub organization dedicated to custom recovery (TWRP) development, kernel trees, and experimental AOSP trees for `a05m`.
- **Status & Findings**:
  - Contains community device trees, kernel modification trees (e.g., Kernel 6.6 backports / OSS DLKM trees), and device manifest tests for `a05m`.
  - **Limitations**: These repositories represent **work-in-progress (WIP)** community efforts. They require continuous alignment with exact stock vendor firmware versions (e.g., matching kernel versions and vendor blobs to avoid boot loops).

---

## ⚠️ Unverified Components & Technical Unknowns (TODO)

To assemble a complete, source-compiled custom ROM for `a05m`, the following components remain unverified and require further investigation:

1. **TODO**: Verify complete, functional `device/samsung/a05m` and `vendor/samsung/a05m` trees compatible with Pixel-based Android 15/16 source bases.
2. **TODO**: Confirm exact vendor blob extraction lists (proprietary libraries for camera, audio, Bluetooth, and MediaTek RIL/RIL-bridge).
3. **TODO**: Test local manifest (`.repo/local_manifests/`) structures to cleanly sync device trees alongside Pixel OS / AOSP source manifests.

---

## 💻 Cloud Build Infrastructure Requirements

Compiling a full Android operating system from source is a resource-intensive operation:

### AOSP / Custom ROM Hardware Requirements
- **Disk Space**: ~250 GB - 300 GB of free SSD storage (for target source sync, build intermediate output, and ccache).
- **RAM**: 16 GB minimum (32 GB recommended to prevent Out-Of-Memory compiler terminations).
- **Build Time**: Multi-core high-performance CPU (several hours per full clean build).

### Why Standard GitHub Actions Free Runners Are Insufficient
- **GitHub Actions Disk Limit**: Standard Linux runners (`ubuntu-latest`) provide approximately **14 GB of usable free disk space**, which is instantly exhausted during a source sync (`repo sync` requires 100 GB+ for source code alone).
- **Role of GitHub Actions**: In this project, GitHub Actions is used strictly for **automated linting, script validation, and repository structure checks**, NOT for running full Android `make` / `m kaosp` build commands.

---

## 🛡️ Project Status & Non-Compilation Statement

- **No ROM Compiled**: **GiorgiOS Pixel 9 Edition** is currently a structured project framework, repository documentation set, and validation pipeline.
- **No Flashing Executed**: No binaries or image files (`system.img`, `boot.img`, `super.img`) have been compiled, verified, or flash-tested on a physical device yet.
- **Stock Protection**: The stock One UI system remains intact and protected.
