# Telnet server
#/mnt/mmc/telnetd &

# FTP server
/mnt/mmc/scripts/busybox tcpsvd -u root -vE 0.0.0.0 21 /mnt/mmc/scripts/busybox ftpd -w /mnt/mmc/scripts &