#
# Copyright (C) 2016 The CyanogenMod Project
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
#

# This file includes all definitions that apply to ALL otus devices, and
# are also specific to otus devices
#
# Everything in this directory will become public

LOCAL_PATH := device/motorola/otus

# device specific vendor blobs
$(call inherit-product-if-exists, vendor/motorola/otus/otus-vendor.mk)

# Ramdisk
 PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,${LOCAL_PATH}/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,${LOCAL_PATH}/prebuilt/system,system)

DEVICE_PACKAGE_OVERLAYS := \
    $(LOCAL_PATH)/overlay

# Support FRP features (enable bootloader unlock etc.)
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.frp.pst=/dev/block/platform/msm_sdcc.1/by-name/frp

# Inherit from msm8610-common
$(call inherit-product, device/motorola/msm8610-common/msm8610.mk)

# CMActions
PRODUCT_PACKAGES += \
    CMActions
