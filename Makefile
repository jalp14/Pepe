ARCHS = arm64
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Pepe

Pepe_FILES = Tweak.xm
Pepe_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
