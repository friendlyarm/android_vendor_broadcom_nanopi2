# Copyright 2012 The Android Open Source Project
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

ifeq ($(TARGET_BOARD_PLATFORM),gxbaby)

include $(CLEAR_VARS)
LOCAL_MODULE := bcm43438a0
LOCAL_SRC_FILES := bcm43438a0.hcd
LOCAL_MODULE_SUFFIX := .hcd
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := broadcom
# Install symlinks
LOCAL_POST_INSTALL_CMD := \
	ln -sf bcm43438a0.hcd $(TARGET_OUT_VENDOR)/firmware/43438a0.hcd
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := nvram_ap6212
LOCAL_SRC_FILES := nvram_ap6212.txt
LOCAL_MODULE_SUFFIX := .txt
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := broadcom
LOCAL_POST_INSTALL_CMD := \
	ln -sf nvram_ap6212.txt $(TARGET_OUT_VENDOR)/firmware/nvram.txt
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fw_bcm43438a0
LOCAL_SRC_FILES := fw_bcm43438a0.bin
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := broadcom
LOCAL_POST_INSTALL_CMD := \
	ln -sf fw_bcm43438a0.bin $(TARGET_OUT_VENDOR)/firmware/fw_bcm43438a0_p2p.bin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fw_bcm43438a0_apsta
LOCAL_SRC_FILES := fw_bcm43438a0_apsta.bin
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := broadcom
include $(BUILD_PREBUILT)

endif
