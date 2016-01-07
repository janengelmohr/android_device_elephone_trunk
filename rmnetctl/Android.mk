LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),benefit)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

