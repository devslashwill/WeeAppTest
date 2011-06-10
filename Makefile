export THEOS_DEVICE_IP=192.168.0.9
SDKVERSION = 5.0
include theos/makefiles/common.mk

LIBRARY_NAME = WeeAppTest
WeeAppTest_FILES = WeeAppTest.mm
WeeAppTest_INSTALL_PATH = /System/Library/WeeAppPlugins/WeeAppTest.bundle
WeeAppTest_FRAMEWORKS = UIKit CoreGraphics
WeeAppTest_PRIVATE_FRAMEWORKS = BulletinBoard

include $(THEOS_MAKE_PATH)/library.mk

after-stage::
	mv _/System/Library/WeeAppPlugins/WeeAppTest.bundle/WeeAppTest.dylib _/System/Library/WeeAppPlugins/WeeAppTest.bundle/WeeAppTest