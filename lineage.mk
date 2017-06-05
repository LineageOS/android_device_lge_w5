# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/lge/w5/device_w5.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := w5
PRODUCT_NAME := lineage_w5
PRODUCT_MODEL := w5
PRODUCT_DEVICE := w5
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=w5 \
    TARGET_DEVICE=w5 \
    BUILD_FINGERPRINT="lge/w5_global_com/w5n:4.4.2/KOT49I.A1412741696/1412741696:user/release-keys" \
    PRIVATE_BUILD_DESC="w5_global_com-user 4.4.2 KOT49I.A1412741696 1412741696 release-keys"
