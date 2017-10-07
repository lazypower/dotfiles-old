#!/bin/bash

function mount_backup_disk {
    mkdir -p /media/charles/Transcend
    sudo mount /dev/sdb1 /media/charles/Transcend -o uid=1000
}


set +e

df -h | grep Transcend

if [ "$?" == 1 ]; then
   mount_backup_disk 
else
   sudo umount /dev/sdb1
fi
