$(call inherit-product, device/lge/g2m/full_g2m.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := LG G2 mini
PRODUCT_NAME := cm_g2m

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=g2m_global_com \
    BUILD_FINGERPRINT=lge/g2m_global_com/g2m:4.4.2/KOT49I.A1404447153/1404447153:user/release-keys \
    PRIVATE_BUILD_DESC="g2m_global_com-user 4.4.2 KOT49I.A1404447153 1404447153 release-keys"
