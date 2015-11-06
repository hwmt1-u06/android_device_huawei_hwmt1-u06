
USE_CAMERA_STUB := false

# inherit from the proprietary version
include vendor/huawei/hwmt1_u06/BoardConfigVendor.mk

LOCAL_PATH := device/huawei/hwmt1_u06

BOARD_VENDOR := Huawei

TARGET_OTA_ASSERT_DEVICE := hwmt1_u06,hwmt1-u06,MT1-U06

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := k3v2oem1
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon

TARGET_BOOTLOADER_BOARD_NAME := hwmt1_u06
BOARD_VENDOR_PLATFORM := k3v2oem1

# Yep, we are shipping a custom init.rc
TARGET_PROVIDES_INIT_RC := true

# Local flag
BOARD_USE_K3V2OEM1 := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_AUDIO_EFFECTS := false

# Wifi
USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X_TI
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
PRODUCT_WIRELESS_TOOLS           := true
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlcore_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wlcore_sdio"
WIFI_FIRMWARE_LOADER             := ""
BOARD_WIFI_SKIP_CAPABILITIES     := true
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211
endif

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_TI := true
BOARD_WPAN_DEVICE := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Framework extensions
TARGET_BOOTCLASSPATH_EXTENSION := :/system/framework/hwcustframework.jar:/system/framework/hwframework.jar:/system/framework/com.google.android.media.effects.jar:/system/framework/com.google.widevine.software.drm.jar

# Kernel
TARGET_KERNEL_SOURCE := kernel/huawei/hwmt1_u06
TARGET_KERNEL_CONFIG := hwmt1_u06_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := linaro-4.6/bin/arm-linux-androideabi-

KERNEL_EXTERNAL_MODULES:
	$(MAKE) clean -C $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless
	$(MAKE) $(MAKE_FLAGS) -C $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless KERNEL_DIR=$(KERNEL_OUT) KLIB=$(KERNEL_OUT) KLIB_BUILD=$(KERNEL_OUT) ARCH=$(TARGET_ARCH) $(ARM_CROSS_COMPILE) EXTRA_CFLAGS=-fno-pic
	mv $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless/compat/compat.ko $(KERNEL_MODULES_OUT)
	mv $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless/compat/sch_codel.ko $(KERNEL_MODULES_OUT)
	mv $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless/compat/sch_fq_codel.ko $(KERNEL_MODULES_OUT)
	mv $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless/net/mac80211/mac80211.ko $(KERNEL_MODULES_OUT)
	mv $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless/net/wireless/cfg80211.ko $(KERNEL_MODULES_OUT)
	mv $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless/drivers/net/wireless/ti/wl18xx/wl18xx.ko $(KERNEL_MODULES_OUT)
	mv $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless/drivers/net/wireless/ti/wlcore/wlcore.ko $(KERNEL_MODULES_OUT)
	mv $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless/drivers/net/wireless/ti/wlcore/wlcore_spi.ko $(KERNEL_MODULES_OUT)
	mv $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless/drivers/net/wireless/ti/wlcore/wlcore_sdio.ko $(KERNEL_MODULES_OUT)
	$(MAKE) clean -C $(TARGET_KERNEL_SOURCE)/drivers/compat-wireless

TARGET_KERNEL_MODULES := KERNEL_EXTERNAL_MODULES

BOARD_KERNEL_CMDLINE := androidboot.hardware=k3v2oem1 vmalloc=384M k3v2_pmem=1 mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(reserved1),p8(reserved2),p9(splash2),p10(recovery2),p11(recovery),p12(boot),p13(modemimage),p14(modemnvm1),p15(modemnvm2),p16(system),p17(cache),p18(cust),p19(userdata);mmcblk1:p1(ext_sdcard)
#                       androidboot.hardware=k3v2oem1 is needed to load "ueventd.k3v2oem1.rc" on boot.

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01400000
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5255462912

# libhealthd
BOARD_HAL_STATIC_LIBRARIES += libhealthd.k3v2oem1

# default.prop
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.location=1 \
    persist.sys.usb.config=adb \
    persist.service.adb.enable=1 \
    persist.rilrecovery.qsc6085.en=true \
    ro.config.hw_bootversion=MT1-U06V100R001CHNC00B331_BOOT

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH

# Hardware
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

# Camera
BOARD_CAMERA_HAVE_ISO := true

# RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

# Misc
BOARD_NEEDS_CUTILS_LOG := true
BOARD_SCREENRECORD_DEVICE_FORCE_AUDIO_MIC := true
TARGET_GRALLOC_USES_ASHMEM := true
BOARD_USES_SECURE_SERVICES := true
TARGET_USES_PMEM := true
TARGET_USES_ION := false

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
BOARD_VOLD_MAX_PARTITIONS := 19

# TWRP

# system
HAVE_SELINUX := true
BOARD_HAS_LOCKED_BOOTLOADER := true
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc

# display
DEVICE_RESOLUTION := 720x1280
TW_MAX_BRIGHTNESS := 255
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TW_BRIGHTNESS_PATH := "/sys/devices/platform/k3_fb.1/leds/lcd_backlight0/brightness"

# controls
BOARD_RECOVERY_SWIPE := true
BOARD_TOUCH_RECOVERY := 
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../$(LOCAL_PATH)/recovery/recovery_keys.c

# storage
BOARD_FLASH_BLOCK_SIZE := 131072
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INTERNAL_STORAGE_PATH := "/data/share"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"

# battery
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
