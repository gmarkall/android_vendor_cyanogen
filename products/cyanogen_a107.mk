# Inherit AOSP device configuration for encore.
$(call inherit-product, device/lenovo/a1/a1.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_a107
PRODUCT_BRAND := lenovo
PRODUCT_DEVICE := a107
PRODUCT_MODEL := A1
PRODUCT_MANUFACTURER := lenovo
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=a107 BUILD_ID=GRK393 BUILD_FINGERPRINT=lenovo/a107/a107:2.3.7/GRK393/189913:user/release-keys PRIVATE_BUILD_DESC="a107-user 2.3.7 GRK393 189913 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := a107
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
