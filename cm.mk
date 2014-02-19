# Release name
PRODUCT_RELEASE_NAME := A700

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-800x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/a700/full_a700.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a700
PRODUCT_NAME := cm_a700
PRODUCT_BRAND := Azpen
PRODUCT_MODEL := A700
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=a700 BUILD_FINGERPRINT="allwinner/a700/a700:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="a700-user 4.0.4 IMM76I 330937 release-keys"
