#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hollywood device
$(call inherit-product, device/oculus/hollywood/device.mk)

PRODUCT_DEVICE := hollywood
PRODUCT_NAME := omni_hollywood
PRODUCT_BRAND := oculus
PRODUCT_MODEL := Quest 2
PRODUCT_MANUFACTURER := oculus

PRODUCT_GMS_CLIENTID_BASE := android-oculus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hollywood-user 12 SQ3A.220605.009.A1 50500320045600150 release-keys"

BUILD_FINGERPRINT := oculus/hollywood/hollywood:12/SQ3A.220605.009.A1/50500320045600150:user/release-keys
