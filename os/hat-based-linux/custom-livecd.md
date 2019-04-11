Custom livecd/USB
======================================

```
dnf install livecd-tools livecd-iso-to-mediums
dnf install fedora-kickstarts # Optional if you want to just use the standard kickstarts
```

Create / modify your kickstart file to suit your needs, then run the livecd-creator:

```
livecd-creator --config=./fedora-live-base.ks  --verbose --fslabel="myimage"
```

This will create myimage.iso in your CWD

Once that is done you can write it to any USB / CD as normal, e.g.

```
livecd-iso-to-disk --format --efi --timeout 60 ./myimage.iso /dev/sdc
```
