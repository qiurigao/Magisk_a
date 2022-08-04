LOCAL_PATH := $(call my-dir)

###########################
# Rust compilation outputs
###########################

ifdef B_MAGISK
include $(CLEAR_VARS)
LOCAL_MODULE := magisk-rs
LOCAL_SRC_FILES := ../out/$(TARGET_ARCH_ABI)/libmagisk-rs.a
include $(PREBUILT_STATIC_LIBRARY)
endif

ifdef B_BOOT
include $(CLEAR_VARS)
LOCAL_MODULE := boot-rs
LOCAL_SRC_FILES := ../out/$(TARGET_ARCH_ABI)/libmagiskboot-rs.a
include $(PREBUILT_STATIC_LIBRARY)
endif

ifdef B_INIT
include $(CLEAR_VARS)
LOCAL_MODULE := init-rs
LOCAL_SRC_FILES := ../out/$(TARGET_ARCH_ABI)/libmagiskinit-rs.a
include $(PREBUILT_STATIC_LIBRARY)
endif

ifdef B_POLICY
include $(CLEAR_VARS)
LOCAL_MODULE := policy-rs
LOCAL_SRC_FILES := ../out/$(TARGET_ARCH_ABI)/libmagiskpolicy-rs.a
include $(PREBUILT_STATIC_LIBRARY)
endif
