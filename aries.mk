TARGET_DEVICE_BLOBS := vendor/sony/aries/aries-vendor-blobs.mk

$(call inherit-product-if-exists, device/sony/shinano-common/device.mk)
$(call inherit-product-if-exists, $(TARGET_DEVICE_BLOBS))

TARGET_GCC_VERSION_EXP := 4.8
COMMON_GLOBAL_CFLAGS += -Wno-unused-parameter
TARGET_GLOBAL_CPPFLAGS += -Wno-unused-parameter -Wno-sizeof-pointer-memaccess

# for Gecko
PRODUCT_PROPERTY_OVERRIDES += \
  ro.moz.has_home_button=0 \
  ro.semc.product.model=D5803 \
  ro.semc.version.fs=GLOBAL-LTE \
  ro.semc.version.fs_revision=23.0.1.A.5.77 \
  ro.usb.pid_suffix=1BB \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
  ro.semc.version.sw=1285-6521 \
  ro.semc.version.sw_revision=23.0.1.A.5.77 \
  ro.semc.version.sw_variant=GENERIC \
  ro.semc.version.sw_type=user \

GAIA_DEV_PIXELS_PER_PX := 2.25

BOOTANIMATION_ASSET_SIZE := 720p

PRODUCT_NAME := aries
PRODUCT_DEVICE := aries
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia Z3 Compact (B2G)
