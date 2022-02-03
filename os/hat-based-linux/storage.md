LVM / Storage
======================================


Fix duplicated UUID:
```
# Change the blk UUID of the disk:
$ tune2fs -U random /dev/${disk}
or
$ xfs_admin -U $(uuidgen) /dev/${disk}
```

Recover a Volume Group if you've lost one of the PVs:
```
# If you've got a vgcfgbackup file - change UUIDs / remove gone PVs:
wipefs -b -a /dev/${disk}
pvcreate --restorefile ./${vg}_00007-763723843.vg --uuid ${uuid} /dev/${disk}
vgcfgrestore ${vg} --test --file ./${vg}1_00007-763723843.vg
# Active the vg to create the paths under /dev
vgchange -a y ${vg}
```

Import a duplicated VG from duplicated disks i.e. from restoring a snapshot onto a new volume attached to the original machine.
```
# Find current UUIDs:
blkid
# Find magic strings and wipe them:
wipefs /dev/${disk}
wipefs -b -a /dev/${disk}
pvcreate /dev/${disk}
```

Rename a VG:

```
vgdisplay | grep "VG UUID"
vgrename ${UUID} vg_new_name
```
