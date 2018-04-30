$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libtinyalsa

# WiFi
PRODUCT_PACKAGES += \
	wpa_supplicant \
	wpa_supplicant.conf \
	hostapd

# Device props
PRODUCT_PROPERTY_OVERRIDES := \
	keyguard.no_require_sim=true \
	ro.com.android.dataroaming=false \
	persist.sys.sprd.modemreset=0

# Compat
PRODUCT_PACKAGES += \
    	libstlport

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

# Permissions
PERMISSION_XML_FILES := \
	frameworks/native/data/etc/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.software.sip.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml \

PRODUCT_COPY_FILES += \
	$(foreach f,$(PERMISSION_XML_FILES),$(f):system/etc/permissions/$(notdir $(f)))

# Filesystem management tools
PRODUCT_PACKAGES += \
	f2fstat \
	fibmap.f2fs \
	fsck.f2fs \
	mkfs.f2fs \
	setup_fs \

# Misc packages
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
    
# Samsung Service Mode
PRODUCT_PACKAGES += \
	SamsungServiceMode
