TARGET_IS_64_BIT := true
TARGET_USES_64_BIT_BINDER := true

# Kernel informations
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --board 1465391499 --ramdisk_offset 0x04f88000 --second_offset 0x00e88000 --tags_offset 0x03f88000

# Kernel properties
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_EXPORT_PRODUCT := kungfu_m
#KERNEL_TOOLCHAIN := /home/pipao/motom/ubertc/bin/
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_SOURCE := kernel/motorola/XT1663
TARGET_KERNEL_CONFIG := lineage_kungfu_m_defconfig
