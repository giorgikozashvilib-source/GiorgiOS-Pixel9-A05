£ Inherit AOSP ARM64 GSI base targets
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_release.mk)

£ GiorgiOS Pixel 9 Identity
PRODUCT_NAME := giorgios_gsi_arm64
PRODUCT_DEVICE := generic_arm64
PRODUCT_BRAND := GiorgiOS
PRODUCT_MODEL := Pixel 9 Edition (GSI)
PRODUCT_MANUFACTURER := GiorgiOS-Project

£ Pixel 9 UI Properties & Treble Compatibility Flags
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.giorgios.version=Pixel9-Edition \
    ro.giorgios.target=Treble-GSI \
    ro.control_privapp_permissions=enforce \
    persist.sys.theme=pixel
