USE_CAMERA_STUB := true

# Fake building with froyo cam, as old libcam is not here yet
BOARD_USE_FROYO_LIBCAMERA := true

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

TARGET_PREBUILT_KERNEL := device/samsung/galaxyace/kernel

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/galaxyace/recovery.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/galaxyace/recovery/recovery_ui.c

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

BOARD_USE_GR_FLIP_32 := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
GRALLOC_MODULE_PERFORM_DECIDE_PUSH_BUFFER_HANDLING := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_USES_QCOM_GPS := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

WITH_JIT := true
ENABLE_JSC_JIT := true

# Following two lines only needed in Froyo for USB Mass Storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun"
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
