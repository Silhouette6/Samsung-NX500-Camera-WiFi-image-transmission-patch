#!/bin/bash
# a script based on ottokiksmaler/nx500_nx1_modding

sleep 5
if [ ! -x /usr/sbin/bluetoothd.orig ]; then
    # sdcard run file mod NOT already installed
    # thanks to Otto
  mount -o remount,rw /
  cd /usr/sbin/
  mv bluetoothd bluetoothd.orig
  cat >bluetoothd << EOF
#!/bin/bash
if [ -x /opt/storage/sdcard/scripts/app.sh ];
then
  /opt/storage/sdcard/scripts/app.sh &
fi
/usr/sbin/bluetoothd.orig -d
EOF
  chmod +x bluetoothd
  sync;sync;sync
  mount -o remount,ro /
  rm -f /opt/storage/sdcard/info.tg
  rm -f /opt/storage/sdcard/nx_cs.adj
fi

sleep 3
reboot