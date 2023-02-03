LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),$(filter $(TARGET_DEVICE),devon hawao rhode))
    subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
    $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))
endif
