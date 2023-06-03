ZFS stuff
======================================

Install
```
yum -y install http://download.zfsonlinux.org/epel/zfs-release.el7_3.noarch.rpm epel-release
yum -y install zfs zfs-dracut kernel-devel kernel-headers
systemctl preset zfs-import-cache zfs-import-scan zfs-mount zfs-share zfs-zed zfs.target # This loads in the module
```

Cache disks
Add:
```
zpool add tank cache /dev/disk/by-id/whatever
```

Reimport with by-id
```
zpool export ${pool}
zpool import -d /dev/disk/by-id ${pool}
```

Loop through snapshots:
```
for snap in $(zfs list -H -o name -r -t snapshot ${tank} | grep '@rebalance-' ) ; do
  echo ${snap}
done
```

Rebalance attempt [From Reddit](https://old.reddit.com/r/freenas/comments/k60vzz/guide_how_to_rebalance_pool_after_extending/)
```
Steps to rebalance pool:
1) Create a fresh snapshot
1a) zfs snapshot media/films@today
2) Duplicate a dataset, full recursive send with properties
2a) zfs send -v -Rp media/films@today | zfs recv -v media/films-rebalance
3) Sanity check data/properties/snapshots
3a) ls /mnt/media/films-rebalance/
3b) zfs get all media/films-rebalance
3c) zfs list -r -t snapshot media/films-rebalance
4) Destroy data on original dataset, no-op first !!! You should have backups, don't trust others with your data !!!
4a) zfs destroy -rvn media/films
4b) zfs destroy -rv media/films
5) Rename rebalanced dataset back to original name (instant)
5a) zfs rename media/films-rebalance media/films
6) Delete temporary snapshots, no-op first !!! You should have backups, don't trust others with your data !!!
6a) zfs destroy -vn media/films@today
6b) zfs destroy -v media/films@today
7) Repeat 1-6 for remaining datasets until new mirror is approx same CAP as others... the more datasets you do, the better the data will balance
```
