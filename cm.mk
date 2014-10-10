## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d620/d620.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d620
PRODUCT_NAME := cm_d620
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D620
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2m_global_com/g2m:4.4.2/KOT49I.A1397211185/1397211185:user/release-keys PRIVATE_BUILD_DESC="g2m_global_com-user 4.4.2 KOT49I.A1397211185 1397211185 release-keys"
