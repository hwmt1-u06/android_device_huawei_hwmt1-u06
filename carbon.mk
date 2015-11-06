# bootanimation target
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := MT1-U06

# Inherit some common CM stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/hwmt1_u06/device.mk)

PRODUCT_COPY_FILES += \
    device/huawei/hwmt1_u06/ramdisk/init.rc_carbon:root/init.rc

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hwmt1_u06
PRODUCT_NAME := carbon_hwmt1_u06
PRODUCT_BRAND := huawei
PRODUCT_MODEL := MT1-U06
PRODUCT_MANUFACTURER := HUAWEI


