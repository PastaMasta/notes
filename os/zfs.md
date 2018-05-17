ZFS stuff
======================================

Install
```
yum -y install http://download.zfsonlinux.org/epel/zfs-release.el7_3.noarch.rpm epel-release
yum -y install zfs zfs-dracut kernel-devel kernel-headers
systemctl preset zfs-import-cache zfs-import-scan zfs-mount zfs-share zfs-zed zfs.target # This loads in the module
```
