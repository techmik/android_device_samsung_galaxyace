USE_CAMERA_STUB := true

# Fake building with froyo cam, as old libcam is not here yet
# BOARD_USE_FROYO_LIBCAMERA := true

# inherit from the proprietary version
-include vendor/samsung/galaxyace/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := galaxyace

# Use screencap to capture frame buffer for ddms
BOARD_USE_SCREENCAP := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
GRALLOC_MODULE_PERFORM_DECIDE_PUSH_BUFFER_HANDLING := true
BOARD_USE_GR_FLIP_32 := true
# BOARD_NO_RGBX_8888 := true

TARGET_OTA_ASSERT_DEVICE := galaxyace

BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x13600000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0d940000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bc40000
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_BOOT_DEVICE := /dev/block/bml8
BOARD_DATA_DEVICE := /dev/block/stl13
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/stl12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/stl14
BOARD_CACHE_FILESYSTEM := ext4
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_DEVICE := /dev/block/bml9

TARGET_USERIMAGES_USE_EXT4 := true

TARGET_PREBUILT_KERNEL := device/samsung/galaxyace/kernel

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/galaxyace/recovery.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/galaxyace/recovery/recovery_ui.c

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BT_ALT_STACK := true
BRCM_BT_USE_BTL_IF := true
BRCM_BTL_INCLUDE_A2DP := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
# Following two lines only needed in Froyo for USB Mass Storage
# TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun"
# BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm2049
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true

WITH_JIT := true
ENABLE_JSC_JIT := true
WITH_DEXPREOPT := true
