RHEL Troubleshooting
======================================

Security
---------------

SElinux troubleshooting
```
ausearch
/var/log/audit/audit.log
seinfo
sesearch
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

List old versions of packages
```
yum list --showduplicates
```

RPM database corruption
```
lsof | grep /var/lib/rpm # kill all
rm /var/lib/rpm/__db*
# backup /var/lib/rpm
/usr/lib/rpm/rpmdb_verify Packages # Check DB integrity
```

Networking
---------------

new naming conventions
/etc/udev/rules.d/70-persistant-net.rules
/etc/udev/rules.d/80-net-name-slot.rules

specify HWADDR to map DEVICE name to another name

Application issues
---------------

Dump out interesting things about a binary
```
ldd
objdump
```

Memory leaks
```
valgrind
```

Authentication issues
---------------

PAM

```
authconfig
```

kernel crashdumps
---------------

```
core_collector
kdumpctl
/proc/sys/vm/panic_on_oom
```
panic triggers:
```
kernel.hung_task_panic=1
vm.panic_on_oom=1
kernel.softlockup_panic=1
kernel.panic_on_io_nmi=1 # non-maskable interrupt - physical button?
```

Forcing scenarios - enable sysrq and echo a character into it:

| code | action                                    |
|------|-------------------------------------------|
| m    | Dump information about memory allocation. |
| t    | Dump thread state information.            |
| p    | Dump CPU registers and flags.             |
| c    | Crash the system.                         |
| s    | Sync mounted file systems.                |
| u    | Remount file systems read-only.           |
| b    | Initiate system reboot.                   |
| 9    | Power off the system.                     |
| f    | Start OOM killer.                         |
| w    | Dump hung processes.                      |

```
kernel.sysrq=1
echo $something > /proc/sysrq-trigger
```

---------------
