# SPRD hardware
BOARD_USES_SPRD_HARDWARE := true

# Graphics
USE_OPENGL_RENDERER := true

# RIL
BOARD_PROVIDES_RILD := true
BOARD_PROVIDES_LIBRIL := true
BOARD_PROVIDES_LIBREFERENCE_RIL := true
BOARD_RIL_CLASS := ../../../device/samsung/sprd-common/ril

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Audio
BOARD_USES_TINYALSA_AUDIO := true
TARGET_TINY_ALSA_IGNORE_SILENCE_SIZE := true

# CMHW
BOARD_HARDWARE_CLASS := device/samsung/sprd-common/lineagehw/
