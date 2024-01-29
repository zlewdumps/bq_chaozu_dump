#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:13178152:b4da45bc70b9b80883898a1f6e50985da0fb316c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:12604708:d89389de7b704dbfa238943584b4701399752bb5 EMMC:/dev/block/bootdevice/by-name/recovery b4da45bc70b9b80883898a1f6e50985da0fb316c 13178152 d89389de7b704dbfa238943584b4701399752bb5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
