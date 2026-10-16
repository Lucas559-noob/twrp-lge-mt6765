#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lge/mmh55lm

# Boot control HAL — AOSP genérico (suficiente para TWRP)
PRODUCT_PACKAGES += \
    bootctrl.default \
    bootctrl.default.recovery
