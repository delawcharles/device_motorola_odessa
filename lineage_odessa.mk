#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from odessa device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Brand identifiers
PRODUCT_DEVICE := odessa
PRODUCT_NAME := lineage_odessa
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := Moto G9 Plus
PRODUCT_RELEASE_NAME := odessa

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := odessa

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=odessa \
    PRIVATE_BUILD_DESC="odessa_retail-user 10 QPA30.19-Q3-32-39-1 5ca099 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/odessa_retail/odessa:10/QPA30.19-Q3-32-39-1/5ca099:user/release-keys
