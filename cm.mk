# Release name
PRODUCT_RELEASE_NAME := A700

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/nuclear_inet/full_nuclear_inet.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nuclear_inet
PRODUCT_NAME := cm_nuclear_inet
PRODUCT_BRAND := Azpen
PRODUCT_MODEL := A700
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nuclear_inet BUILD_FINGERPRINT="allwinner/nuclear_inet/nuclear_inet:4.2.2/JDQ39/20140220:userdebug/test-keys" PRIVATE_BUILD_DESC="nuclear_inet-userdebug 4.2.2 JDQ39 20140220 test-keys"
