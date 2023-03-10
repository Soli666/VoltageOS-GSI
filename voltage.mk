$(call inherit-product, vendor/voltage/config/common.mk)
$(call inherit-product, vendor/voltage/config/common_full.mk)
$(call inherit-product, vendor/voltage/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/voltage/config/BoardConfigVoltage.mk)
$(call inherit-product, device/voltage/sepolicy/common/sepolicy.mk)
-include vendor/voltage/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_BOOT_ANIMATION_RES := 1280

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

TARGET_FACE_UNLOCK_SUPPORTED := true

# Use CCache
USE_CCACHE := true


PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	persist.sys.binary_xml=false \
	dalvik.vm.dex2oat64.enabled=true \

# APN
PRODUCT_PACKAGES += apns-conf.xml
