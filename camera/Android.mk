LOCAL_PATH := $(call my-dir)

ifneq ($(filter w3ds w5 w55ds w7 g2m jag3gds jagnm,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)

LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_SRC_FILES := CameraWrapper.cpp

LOCAL_C_INCLUDES := \
	    system/media/camera/include

LOCAL_SHARED_LIBRARIES := \
	    libhardware \
	    liblog \
	    libcamera_client \
	    libhidltransport \
	    libutils \
	    libcutils \
	    libdl \
	    android.hidl.token@1.0-utils \
	    android.hardware.graphics.bufferqueue@1.0

LOCAL_STATIC_LIBRARIES := \
		libbase \
		libarect

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_CFLAGS := -Werror
include $(BUILD_SHARED_LIBRARY)

endif
