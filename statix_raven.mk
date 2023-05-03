
# Inherit some common Statix stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/statix/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/statix_common.mk)

include device/google/raviole/raven/device-statix.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := statix_raven

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 13 TQ2A.230405.003.E1 9802792 release-keys"

BUILD_FINGERPRINT := google/raven/raven:13/TQ2A.230405.003.E1/9802792:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
