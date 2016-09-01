#
# Copyright (C) 2016 The Android Open Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# SPRD hardware
BOARD_USES_SPRD_HARDWARE := true

# Graphics
USE_OPENGL_RENDERER := true

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/sprd-common/ril

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Audio
BOARD_USES_TINYALSA_AUDIO := true
TARGET_TINY_ALSA_IGNORE_SILENCE_SIZE := true

# CMHW
BOARD_HARDWARE_CLASS := device/samsung/sprd-common/cmhw/
