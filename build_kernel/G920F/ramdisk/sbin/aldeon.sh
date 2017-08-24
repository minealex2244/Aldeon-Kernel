#!/system/bin/sh

# Check the location of BusyBox

if [ ! -f /su/xbin/busybox ]; then
	BB=/system/xbin/busybox;
else
	BB=/su/xbin/busybox;
fi;

# KNOX warranty status
sh /sbin/resetprop.sh > /dev/null;

# Mount rootfs as RW

mount -o rw,remount rootfs;

# Fix permissions

chown system system /sys/devices/system/cpu/cpu4/cpufreq/interactive/param_index
chmod 0660 /sys/devices/system/cpu/cpu4/cpufreq/interactive/param_index

# Synapse

chmod -R 755 /res/*;
