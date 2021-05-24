THEOS_DEVICE_IP = 192.168.55.72

INSTALL_TARGET_PROCESSES = YouTube

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = fckytshorts

fckytShorts_FILES = Tweak.x
fckytShorts_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
