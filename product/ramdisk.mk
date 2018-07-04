
# init.mal.rc
# Root
PRODUCT_PACKAGES += \
	enableswap.sh \
	factory_init.connectivity.rc\
	factory_init.project.rc \
	factory_init.rc \
	fstab.mt6755 \
	init.connectivity.rc \
	init.epdg.rc \
	init.microtrust.rc \
	init.modem.rc \
	init.mt6755.rc \
	init.mt6755.usb.rc \
	init.project.rc \
	init.recovery.mt6755.rc \
	init.volte.rc \
	recovery.fstab \
	ueventd.mt6755.rc \
	init.wod.rc \

    
PROCUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/sbin/busybox:root/sbin/busybox \
    $(LOCAL_PATH)/rootdir/sbin/fuelgauged_static:root/sbin/fuelgauged_static \
    
    
    

    
