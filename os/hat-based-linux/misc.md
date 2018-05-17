Misc clever things
======================================

Create a fake disk
```
fallocate -l 10G ./disk.img
losetup loop0 ./disk.img
```
