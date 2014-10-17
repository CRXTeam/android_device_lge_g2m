# Inherit some common PA stuff.
$(call inherit-product, vendor/pa/main.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d620/full_d620.mk)

PRODUCT_BUILD_PROP_OVERRIDES += 
BUILD_FINGERPRINT=lge/g2m_global_com/g2m:4.4.2/KOT49I.A1401238405/1401238405:user/release-keys
PRIVATE_BUILD_DESC="g2m_global_com-user 4.4.2 KOT49I.A1401238405 1401238405 release-keys"

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := LG_G2_mini
PRODUCT_NAME := pa_d620