#
# Copyright (C) 2019-2024 The conquerOS Project
#           (C) 2021-2024 The Halcyon Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Include Halcyon audio cOnfig
include vendor/halcyonui/media/audio/audio.mk

# Fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/halcyonui/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    vendor/halcyonui/etc/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

PRODUCT_PACKAGES += \
    FontArbutus \
    FontArvoLato \
    FontGoogleSans \
    FontKai \
    FontManrope \
    FontNotoSerifSource \
    FontOnePlusSans \
    FontPlusJakartaSans \
    FontRubik \
    FontVictor

# Lockscreen Clock Styles
PRODUCT_PACKAGES += \
    SystemUIClocks-BigNum \
    SystemUIClocks-Calligraphy \
    SystemUIClocks-Flex \
    SystemUIClocks-Growth \
    SystemUIClocks-Inflate \
    SystemUIClocks-Metro \
    SystemUIClocks-NumOverlap \
    SystemUIClocks-Weather

# Launcher
PRODUCT_PACKAGES += \
    ThemedIconsOverlay

# Overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/halcyonui/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/halcyonui/overlay/common/

# OTA
PRODUCT_PACKAGES += \
    UpdaterOverlay