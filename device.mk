#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lge/mmh55lm
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true


PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# TWRP não usa update_engine; remove para evitar dependência de bootctrl.mt6765
PRODUCT_PACKAGES := $(filter-out \
    update_engine_sideload \
    update_engine \
    update_verifier \
    otapreopt_script \
    cppreopts.sh,$(PRODUCT_PACKAGES))
