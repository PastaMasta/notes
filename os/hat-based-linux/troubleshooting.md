RHEL Troubleshooting
======================================

Security
---------------

SElinux troubleshooting
```
ausearch
/var/log/audit/audit.log
```

Intrusion detection
```
aide
```

Hardware info
---------------

```
lshw
lspci
lsusb
lsblk
lscpu
/proc/cpuinfo
/proc/meminfo
systool # sysfsutils package
```

Storage
---------------

Device mapper
```
dmsetup ls
```

Queue schedulers
```
cat /sys/block/*/queue/scheduler
```

Filesystems
---------------

Dump fs info
```
dumpe2fs | grep superblock
e2fsck -b 123 # Use superblock at position 123
xfs_repair
```

LVM
---------------

Plaintext backups in /etc/lvm/backup
```
vgcfgrestore
```

```
lvchange -ay # Activate
lvchange -an # Deactivate
```

Packaging
---------------

Performance
---------------

---------------
