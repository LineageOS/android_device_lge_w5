#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/w5/overlay

# Configs
PRODUCT_COPY_FILES += \
    device/lge/w5/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/w5/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/w5/prebuilt/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc \
    device/lge/w5/prebuilt/usr/keylayout/Generic-D320.kl:system/usr/keylayout/Generic-D320.kl \
    device/lge/w5/prebuilt/usr/keylayout/Generic-D325.kl:system/usr/keylayout/Generic-D325.kl \
    device/lge/w5/prebuilt/usr/keylayout/Generic-MS323.kl:system/usr/keylayout/Generic-MS323.kl

# OTA
PRODUCT_COPY_FILES += \
    device/lge/w5/prebuilt/fixup.sh:fixup.sh

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Common specific options
BOARD_HAS_QCOM_WCNSS := true
BOARD_HAS_NFC := true

PRODUCT_PACKAGES += \
    audio_policy.msm8610 \
    audio.primary.msm8610 \
    keystore.msm8610 \
    gps.msm8610 \
    camera.msm8610 \
    copybit.msm8610 \
    gralloc.msm8610 \
    hwcomposer.msm8610 \
    lights.msm8610 \
    memtrack.msm8610 \
    power.msm8610 \
    sensors.msm8610 \
    sensors.qcom

# Inherit from msm8226-common
$(call inherit-product, device/lge/msm8226-common/msm8226.mk)
$(call inherit-product, vendor/lge/w5/w5-vendor.mk)

