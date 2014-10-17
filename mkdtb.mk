LOCAL_PATH := $(call my-dir)
$(INSTALLED_BOOTIMAGE_TARGET) : $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) --kernel $(OUT)/kernel --ramdisk $(OUT)/ramdisk.img --commandline $(BOARD_KERNEL_CMDLINE) --base $(BOARD_KERNEL_BASE) --pagesize $(TARGET_KERNEL_PAGESIZE) --ramdisk_offset $(KERNEL_RAMDISK_OFFSET) --tags_offset $(KERNEL_TAGS_OFFSET) --dt $(TARGET_PREBUILT_DTB) $(INTERNAL_BOOTIMAGE_ARGS) --output $(OUT)/boot.img
$(INSTALLED_RECOVERYIMAGE_TARGET) : $(MKBOOTIMG) $(INTERNAL_RECOVERY_FILES)
	$(call pretty,"Target recovery image: $@")
	$(MKBOOTIMG) $(INTERNAL_RECOVERY_ARGS) --kernel $(recovery_kernel) --ramdisk $(recovery_ramdisk) --pagesize 2048 --ramdisk_offset $(KERNEL_RAMDISK_OFFSET) --commandline $(DTB_CMD_LINE) --dt $(TARGET_PREBUILT_DTB) --output $(OUT)/recovery.img

