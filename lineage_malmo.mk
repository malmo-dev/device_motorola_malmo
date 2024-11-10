#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := malmo
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := moto g85 5g
PRODUCT_NAME := lineage_malmo

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="malmo_g-user 14 U3UOS34.49-40-2 72faeb test-keys" \
    TARGET_PRODUCT=malmo_g

BUILD_FINGERPRINT := motorola/malmo_g/malmo:14/U3UOS34.49-40-2/72faeb:user/release-keys
