# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800


PRODUCT_NAME := delos3geur
TARGET_VENDOR_PRODUCT_NAME := delos3gub
TARGET_VENDOR_DEVICE_NAME := delos3geur

$(call inherit-product, device/samsung/delos3geur/delos3geur.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=samsung/delos3gub/delos3geur:4.1.2/JZO54K/I8552BUBUANH1:user/release-keys \
    PRIVATE_BUILD_DESC="delos3gub-user 4.1.2 JZO54K I8552BUBUANH1 release-keys"
