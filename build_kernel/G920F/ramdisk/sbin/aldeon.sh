#!/system/bin/sh

# KNOX warranty status
sh /sbin/resetprop.sh > /dev/null;

# Mount rootfs as RW

mount -o rw,remount rootfs;

# Synapse

chmod -R 755 /res/*;
