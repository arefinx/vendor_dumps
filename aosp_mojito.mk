#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# API level, the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 30

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some common ProtonPlus stuff
$(call inherit-product, vendor/proton/config/common.mk)
PROTON_BUILD_VARIANT := OFFICIAL
WITH_GAPPS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
