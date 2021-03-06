# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

$(call add-radio-file,recovery/images/firmware_install.565)

# Hero GSM

file := $(TARGET_OUT_KEYLAYOUT)/hero-keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/hero-keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.hero.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.hero.rc | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := hero-keypad.kcm
include $(BUILD_KEY_CHAR_MAP)
        
# Hero CDMA

file := $(TARGET_OUT_KEYLAYOUT)/heroc-keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/heroc-keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.heroc.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.heroc.rc | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := heroc-keypad.kcm
include $(BUILD_KEY_CHAR_MAP)

# Hero generic

$(call add-radio-file,recovery/images/firmware_error.565)
$(call add-radio-file,recovery/images/bitmap_size.txt)

file := $(TARGET_OUT_KEYLAYOUT)/h2w_headset.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/h2w_headset.kl | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := vold.fstab
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := wlan.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ramzswap.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules/2.6.29-cyanogenmod
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

# other kernel modules
include $(CLEAR_VARS)
LOCAL_MODULE := auth_rpcgss.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules/2.6.29-cyanogenmod
LOCAL_SRC_FILES := modules/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := cifs.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules/2.6.29-cyanogenmod
LOCAL_SRC_FILES := modules/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fuse.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules/2.6.29-cyanogenmod
LOCAL_SRC_FILES := modules/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lockd.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules/2.6.29-cyanogenmod
LOCAL_SRC_FILES := modules/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := nfs_acl.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules/2.6.29-cyanogenmod
LOCAL_SRC_FILES := modules/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := nfs.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules/2.6.29-cyanogenmod
LOCAL_SRC_FILES := modules/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := rpcsec_gss_krb5.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules/2.6.29-cyanogenmod
LOCAL_SRC_FILES := modules/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sunrpc.ko
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/modules/2.6.29-cyanogenmod
LOCAL_SRC_FILES := modules/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

-include vendor/htc/hero/AndroidBoardVendor.mk
