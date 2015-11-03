# bootanimation target
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := MT1-U06

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/hwmt1_u06/hwmt1_u06.mk)

PRODUCT_COPY_FILES += \
    device/huawei/hwmt1_u06/root/init.rc_cm:root/init.rc

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hwmt1_u06
PRODUCT_NAME := cm_hwmt1_u06
PRODUCT_BRAND := huawei
PRODUCT_MODEL := MT1-U06
PRODUCT_MANUFACTURER := HUAWEI


