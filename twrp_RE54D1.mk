#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RE54D1 device
$(call inherit-product, device/realme/RE54D1/device.mk)

PRODUCT_DEVICE := RE54D1
PRODUCT_NAME := twrp_RE54D1
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3265
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3265_ctcc-user 11 RP1A.201005.001 33200 release-keys"

BUILD_FINGERPRINT := realme/RMX3265/RE54D1:11/RP1A.201005.001/1660580113000:user/release-keys
