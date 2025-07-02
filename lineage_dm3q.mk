#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dm3q device
$(call inherit-product, device/samsung/dm3q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_dm3q
PRODUCT_DEVICE := dm3q
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S918B

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="dm3qxxx-user 15 AP3A.240905.015.A2 S918BXXS8DYF1 release-keys" \
    BuildFingerprint=samsung/dm3qxxx/dm3q:15/AP3A.240905.015.A2/S918BXXS8DYF1:user/release-keys \
    DeviceProduct=dm3qxxx \
    SystemName=dm3qxxx \
    RisingChipset="Snapdragon® 8 Gen 2" \
    RisingMaintainer="3kz"

# RisingOS variables
RISING_MAINTAINER := 3kz

TARGET_ENABLE_BLUR := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
