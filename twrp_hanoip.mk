#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hanoip device
$(call inherit-product, device/motorola/hanoip/device.mk)

PRODUCT_DEVICE := hanoip
PRODUCT_NAME := twrp_hanoip
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(60)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hanoip_retail-user 11 S2RIS32.32-20-7-10 ab428 release-keys"

BUILD_FINGERPRINT := motorola/hanoip_retail/hanoip:11/S2RIS32.32-20-7-10/ab428:user/release-keys
