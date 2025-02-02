#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TECNO-BF7 device
$(call inherit-product, device/TECNO/BF7/device.mk)

PRODUCT_DEVICE := BF7
PRODUCT_NAME := omni_BF7
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO BF7
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_bf7_h6127-user 12 SP2A.210812.016 605190 release-keys"

BUILD_FINGERPRINT := TECNO/BF7-GL/TECNO-BF7:12/SP2A.210812.016/240510V1777:user/release-keys
