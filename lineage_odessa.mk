# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from odessa device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := odessa
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_odessa
PRODUCT_MODEL := moto g(9) plus

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := odessa
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="odessa_retail-user 10 QPA30.19-Q3-32-39-1 5ca099 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/odessa_retail/odessa:10/QPA30.19-Q3-32-39-1/5ca099:user/release-keys
