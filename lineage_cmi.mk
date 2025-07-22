#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cmi device
$(call inherit-product, device/xiaomi/cmi/device.mk)

# Build Flags
TARGET_SCREEN_HEIGHT          := 2340
TARGET_SCREEN_WIDTH           := 1080
TARGET_USES_MINI_GAPPS        := true
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_HAS_UDFPS              := true
TARGET_INCLUDE_ACCORD         := false
BUILD_BCR                     := true

PRODUCT_NAME := lineage_cmi
PRODUCT_DEVICE := cmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cmi-user 13 RKQ1.211001.001 V816.0.2.0.TJAMIXM release-keys" \
    BuildFingerprint=Xiaomi/cmi_global/cmi:13/RKQ1.211001.001/V816.0.2.0.TJAMIXM:user/release-keys
