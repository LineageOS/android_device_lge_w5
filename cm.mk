# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/lge/w5/device_w5.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := LG L70
PRODUCT_NAME := cm_w5
PRODUCT_MODEL := w5
PRODUCT_DEVICE := w5
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
