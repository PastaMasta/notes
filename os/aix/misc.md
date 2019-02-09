Misc things
======================================

loop mount an ISO
```
loopmount -i ./somefile.iso -o "-V cdrfs -o ro" -m /mnt
```

Burn ISO
```
burn_cd -d /dev/cd0 ./somefile.iso
```

Truss (strace equiv)
```
truss -a -e -f -mall -rall -sall -tall -p $PID
```

Show inode info
```
istat ./somefile
```

Error reporting
```
errpt
```
Timestamp is:
MM DD HH mm YY


Minidump report
```
/usr/sbin/mdmprpt
```

## Services
Services are under SRC, can have service groups too

List out all the options for a subsystem
```
lssrc -S -s $subsys
```

## Booting
Recreate bootimg
```
bosboot
```

Bootlist
```
bootlist -om normal
bootlist -m normal hdisk0 blv=bos_hd5
```

## Ramdisks
```
mkramdisk 512M
mkfs -V jfs2 /dev/ramdisk0
mount -V jfs2 -o log=NULL /dev/ramdisk0 /mnt
rmdamdisk ramdisk0
```

Trace process using network port
```
$id = `netstat -Aan | awk '/$port/ {print $1}'`
kdb
(0)> sockinfo $id tcpcb | grep pvproc
# this gives you some value
(0) hcal $thatvalue # this gives you the PID
(0) exit
ps -ef | grep $pid
```

LV control block data
```
/usr/sbin/getlvcb $yourlv
/usr/sbin/putlvcb -f $flags $yourlv # put new flags into lvcb
```
