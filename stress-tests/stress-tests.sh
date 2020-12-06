#!/bin/sh

# CPU load
while true; do hackbench >/dev/null 2>&1; done &

# I/O load (eMMC read)
while true; do du /usr >/dev/null 2>&1; done &
while true; do find / -name a* >/dev/null 2>&1; done &

# I/O load (USB read/write)
if mount | grep /mnt/pendrive >/dev/null; then
    cd /mnt/pendrive
    tar -cf file.tar -C /var/log --exclude=lost+found -p .
    while true; do rm -rf output; mkdir -p output; tar xfv file.tar -C output/ >/dev/null 2>&1; done &
fi

# RTC read/write
while true; do hwclock >/dev/null 2>&1; sleep 0.1; done &
while true; do hwclock -w >/dev/null 2>&1; sleep 0.1; done &

# Network load
while true; do iperf3 -c bouygues.iperf.fr -P 10 >/dev/null 2>&1; done

echo "RT stress tests started successfully!"

# Dont exit
while true; do sleep 1; done
