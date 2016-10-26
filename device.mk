LOCAL_PATH := device/amazon/ariel

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/amazon/ariel/ariel-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/amazon/ariel/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_ariel
PRODUCT_DEVICE := ariel
