£ GiorgiOS Pixel 9 Edition (Samsung Galaxy A05 - a05m)

Custom Generic System Image (GSI) project bringing the Pixel 9 UI experience to the Samsung Galaxy A05.

££  Project Status
- **Target Device:** Samsung Galaxy A05 SM-A055F (`a05m`)
- **Completion Target:** October 24
- **Status:** Phase 6 Finalized (CI/CD & Flashing Ready)

££  Flashing Instructions
1. Unlock the bootloader on your Samsung Galaxy A05.
2. Boot into Fastboot / Download Mode.
3. Flash the GSI system image to the logical partition:
   ```bash
   fastboot flash system system.img
   ```
4. Perform a factory reset / userdata wipe to prevent bootloops.
5. Reboot and enjoy your Pixel 9 experience!
