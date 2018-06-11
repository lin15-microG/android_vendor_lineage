#!/sbin/sh

# Modern devices use /system as root ("/")
system_as_root=`getprop ro.build.system_root_image`
if [ "$system_as_root" == "true" ]; then
  if umount /system && umount /system_root; then
    exit 0
  fi
fi

if umount /system; then
    exit 0
fi

exit 1
