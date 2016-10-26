
## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ariel

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/amazon/ariel/device.mk)

PRODUCT_NAME := omni_ariel
PRODUCT_DEVICE := ariel
PRODUCT_BRAND := amazon
PRODUCT_MODEL := Fire HD 6
PRODUCT_MANUFACTURER := amazon
