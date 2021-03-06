# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/nextbit/ether/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/nextbit/ether/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_ether
PRODUCT_DEVICE := ether
PRODUCT_BRAND := Nextbit
PRODUCT_MODEL := Robin
PRODUCT_MANUFACTURER := Nextbit

PRODUCT_BUILD_PROP_OVERRIDES += \
     BUILD_FINGERPRINT=Nextbit/ether/ether:6.0/MRA58K/00WW_1_19E:user/release-keys \
     PRIVATE_BUILD_DESC="ether-user 6.0 MRA58K 00WW_1_19E release-keys"