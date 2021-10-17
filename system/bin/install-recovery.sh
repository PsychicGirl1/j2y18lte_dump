#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14789932:895152073659d66f26c190ac40196f528d03fb12; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:13212968:4eb5fb5ec8523059df8e7121b8d0b271cf72ed86 EMMC:/dev/block/bootdevice/by-name/recovery 895152073659d66f26c190ac40196f528d03fb12 14789932 4eb5fb5ec8523059df8e7121b8d0b271cf72ed86:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
