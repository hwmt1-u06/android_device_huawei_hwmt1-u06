# The gps config appropriate for this device
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, vendor/huawei/hwmt1_u06/hwmt1_u06-vendor.mk)

LOCAL_PATH := device/huawei/hwmt1_u06

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

### RAMDISK

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.k3v2oem1.cpu.rc:root/init.k3v2oem1.cpu.rc \
    $(LOCAL_PATH)/ramdisk/init.k3v2oem1.glove.rc:root/init.k3v2oem1.glove.rc \
    $(LOCAL_PATH)/ramdisk/init.k3v2oem1.rc:root/init.k3v2oem1.rc \
    $(LOCAL_PATH)/ramdisk/init.k3v2oem1.usb.rc:root/init.k3v2oem1.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/sbin/6085downloader:root/sbin/6085downloader \
    $(LOCAL_PATH)/recovery/sbin/mtk_update:root/sbin/mtk_update \
    $(LOCAL_PATH)/recovery/sbin/updatemodem:root/sbin/updatemodem \
    $(LOCAL_PATH)/recovery/fstab.k3v2oem1:root/fstab.k3v2oem1 \
    $(LOCAL_PATH)/recovery/ueventd.k3v2oem1.rc:root/ueventd.k3v2oem1.rc

### RECOVERY

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/sbin/6085downloader:recovery/root/sbin/6085downloader \
    $(LOCAL_PATH)/recovery/sbin/mtk_update:recovery/root/sbin/mtk_update \
    $(LOCAL_PATH)/recovery/sbin/updatemodem:recovery/root/sbin/updatemodem \
    $(LOCAL_PATH)/recovery/ueventd.k3v2oem1.rc:recovery/root/ueventd.k3v2oem1.rc \
    $(LOCAL_PATH)/recovery/fstab.k3v2oem1:recovery/root/fstab.k3v2oem1

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/system/bin/linker:recovery/root/system/bin/linker \
    $(LOCAL_PATH)/recovery/system/lib/libc.so:recovery/root/system/lib/libc.so \
    $(LOCAL_PATH)/recovery/system/lib/libdl.so:recovery/root/system/lib/libdl.so \
    $(LOCAL_PATH)/recovery/system/lib/libm.so:recovery/root/system/lib/libm.so \
    $(LOCAL_PATH)/recovery/system/lib/libstdc++.so:recovery/root/system/lib/libstdc++.so \
    $(LOCAL_PATH)/recovery/system/lib/libz.so:recovery/root/system/lib/libz.so

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/res/images/720x1280/batt_level_scale.png:recovery/root/res/images/720x1280/batt_level_scale.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/batt_level_top.png:recovery/root/res/images/720x1280/batt_level_top.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/bg.png:recovery/root/res/images/720x1280/bg.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/empty_charge.png:recovery/root/res/images/720x1280/empty_charge.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/err_charge.png:recovery/root/res/images/720x1280/err_charge.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/full_charge.png:recovery/root/res/images/720x1280/full_charge.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_0.png:recovery/root/res/images/720x1280/number_0.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_1.png:recovery/root/res/images/720x1280/number_1.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_2.png:recovery/root/res/images/720x1280/number_2.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_3.png:recovery/root/res/images/720x1280/number_3.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_4.png:recovery/root/res/images/720x1280/number_4.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_5.png:recovery/root/res/images/720x1280/number_5.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_6.png:recovery/root/res/images/720x1280/number_6.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_7.png:recovery/root/res/images/720x1280/number_7.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_8.png:recovery/root/res/images/720x1280/number_8.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/number_9.png:recovery/root/res/images/720x1280/number_9.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/percent_5.png:recovery/root/res/images/720x1280/percent_5.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/percent_10.png:recovery/root/res/images/720x1280/percent_10.png \
    $(LOCAL_PATH)/recovery/res/images/720x1280/percent_sign.png:recovery/root/res/images/720x1280/percent_sign.png

### SYSTEM

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_LOCALES += en_US

# Device uses ultra-high-density artwork where available
PRODUCT_AAPT_CONFIG := hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# This device have enough room for precise dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libemoji \
    sf2 \
    stream \
    record \
    recordvideo \
    libaudioutils \
    libaudio-resampler \
    audioloop \
    codec

PRODUCT_PACKAGES += \
    wpa_supplicant.conf \
    hostapd.conf

# Misc
PRODUCT_PACKAGES += \
    setup_fs \
    librs_jni \
    libsrec_jni \
    com.android.future.usb.accessory \
    make_ext4fs

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

PRODUCT_PACKAGES += \
    Torch

PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer

# Bluetooth
PRODUCT_PACKAGES += \
    bt_sco_app \
    BluetoothSCOApp \
    libtinyalsa

PRODUCT_PACKAGES += \
    uim-sysfs \
    libbt-vendor

PRODUCT_PACKAGES += \
    charger \
    check \
    leds

PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-rtsp=true \
    media.stagefright.enable-record=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=2

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    ap.interface=wlan1 \
    ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hspap_hsdpa_open=1 \
    ro.config.modem_hsic=true \
    ro.thmodem.type=sprd \
    ro.modem.type=6260 \
    ril.gsm.deviceid=-1 \
    ril.cdma.deviceid=-1 \
    ril.gsm.rssi=-1 \
    ril.cdma.rssi=-1 \
    persist.sys.logsystem.neversend=0 \
    modify_ram_show=true \
    persist.sys.phb.enable=1 \
    persist.sys.phb.debug.enable=1 \
    persist.sys.actualpoweron=true \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.config.incall_notify_mms=true \
    ro.config.hw_allow_ums_and_mtp=true \
    ro.dolbywithheadset.enable=1 \
    ro.streaming.video.drs=true \
    media.aac_51_output_enabled=true \
    ro.config.vdf_apn_switch=true \
    ro.config.hw_show_network_icon=true \
    persist.telephony.mpdn=false \
    ro.cellbroadcast.emergencyids=919,4371 \
    ro.config.vm_prioritymode=2 \
    ro.product.aac.softaac2ffmpeg=true \
    ro.config.helix_enable=true \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=256m

# Disable sending usage data
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.nocheckin=1

# debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    ro.adb.secure=0 \
    ro.secure=0 \
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.sys.root_access=3
    
# Try to get "BangL version" from global var
ifeq ($(BANGL_VERSION),)
BANGL_VERSION := Unknown
endif
ADDITIONAL_BUILD_PROPERTIES += ro.bangl.version=$(BANGL_VERSION)

$(call inherit-product, build/target/product/full.mk)

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
