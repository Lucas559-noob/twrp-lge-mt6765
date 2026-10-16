#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mmh55lm device
$(call inherit-product, device/lge/mmh55lm/device.mk)

PRODUCT_DEVICE := mmh55lm
PRODUCT_NAME := omni_mmh55lm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-X430
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mmh55lm-user 10 QKQ1.200730.002 211972347fba4 release-keys"

BUILD_FINGERPRINT := lge/mmh55lm/mmh55lm:10/QKQ1.200730.002/211972347fba4:user/release-keys
