
# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200
##TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common Tesla stuff.
$(call inherit-product, vendor/validus/config/common_full_tablet_wifionly.mk)

# Inherit telephony stuff
# $(call inherit-product, vendor/validus/config/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/validus/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/full_deb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := validus_deb
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razorg \
    BUILD_FINGERPRINT=google/razorg/deb:6.0.1/MMB29Q/2480792:user/release-keys \
    PRIVATE_BUILD_DESC="razorg-user 6.0.1 MMB29Q 2480792 release-keys"
