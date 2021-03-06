# Generic product
PRODUCT_NAME := xenonhd
PRODUCT_BRAND := xenonhd
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    wifi.supplicant_scan_interval=180

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/xenonhd/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/xenonhd/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/xenonhd/proprietary/common/etc/hosts:system/etc/hosts \
    vendor/xenonhd/proprietary/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/xenonhd/proprietary/common/etc/liberty.cfg:system/etc \
    vendor/xenonhd/proprietary/common/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/xenonhd/proprietary/common/lib/soundfx/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so \
    vendor/xenonhd/proprietary/common/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    vendor/xenonhd/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so
        
# init.d support
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/xenonhd/proprietary/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/xenonhd/proprietary/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/xenonhd/proprietary/common/etc/init_trigger.enabled:system/etc/init_trigger.enabled \
    vendor/xenonhd/proprietary/common/bin/sysinit:system/bin/sysinit
    
# Cron schedual 
#PRODUCT_COPY_FILES += \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_ca
    
# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/xenonhd/proprietary/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown
    
# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/xenonhd/proprietary/common/bin/compcache:system/bin/compcache \
    vendor/xenonhd/proprietary/common/bin/handle_compcache:system/bin/handle_compcache
    
# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/xbin/backup:system/xbin/backup \
    vendor/xenonhd/proprietary/common/xbin/btool:system/xbin/btool \
    vendor/xenonhd/proprietary/common/xbin/drm1_func_test:system/xbin/drm1_func_test \
    vendor/xenonhd/proprietary/common/xbin/gdb:system/xbin/gdb \
    vendor/xenonhd/proprietary/common/xbin/gdbserver:system/xbin/gdbserver \
    vendor/xenonhd/proprietary/common/xbin/market_history:system/xbin/market_history \
    vendor/xenonhd/proprietary/common/xbin/rm_apks:system/xbin/rm_apks \
    vendor/xenonhd/proprietary/common/xbin/run_backup:system/xbin/run_backup \
    vendor/xenonhd/proprietary/common/xbin/run_restore:system/xbin/run_restore \
    vendor/xenonhd/proprietary/common/xbin/ssmgrd:system/xbin/ssmgrd \
    vendor/xenonhd/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/xenonhd/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/xenonhd/proprietary/common/xbin/zip:system/xbin/zip \
    vendor/xenonhd/proprietary/common/xbin/su:system/xbin/su \
    vendor/xenonhd/proprietary/common/xbin/zipalign:system/xbin/zipalign

# 4.2 Keyboard
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/common/app/LatinIME.apk:system/app/LatinIME.apk \
    vendor/xenonhd/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# JB 4.2 Camera
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/common/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/xenonhd/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/xenonhd/proprietary/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/xenonhd/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/xenonhd/proprietary/common/lib/liblightcycle.so:system/lib/liblightcycle.so

ifeq ($(TARGET_BUILD_VARIANT),userdebug)
# Blobs common to all devices except emulator
PRODUCT_COPY_FILES += \
    
endif

ifneq ($(filter xenonhd_crespo xenonhd_crespo4g xenonhd_maguro xenonhd_toro,$(TARGET_PRODUCT)),)
# Blobs common to all devices except emulator and tablets
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/app/CarHome.apk:system/app/CarHome.apk \
    vendor/xenonhd/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk
endif

# T-Mobile theme engine
PRODUCT_PACKAGES += \
       ThemeManager \
       ThemeChooser \
       com.tmobile.themes

PRODUCT_COPY_FILES += \
       vendor/xenonhd/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

