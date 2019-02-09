Storage
======================================

# lvm

```
lspv
lsvg
lsvg rootvg
```

Extend a vg
```
extendvg $vg $hdiskx
```

Add space to a fs
```
chfs -a size=+1G /var
```

Add PVID to disk without one
```
chdev -l $hdisk -a pv=yes
```

dump VGDA
```
lqueryvg -Atvp $hdiskX
```

Read PVID
```
lquerypv -h /dev/$hdiskx 80 10
```

Read coredump
```
lquerypv -h /file.core 6b0 64
```

# Multipathing

List what paths are active
```
lspath
```

Check path priority
```
lspath -AE -l $hdiskx -p $vscsix
```

Change path priority
```
chpath -l $hdiskx -a priority=255 -p $vscsix
```

# Paging
```
lsps -a # Show
```

Extend page
```
chps -s $LPs $page_space_lv # Where LP size is from vg
```

Show page space users
```
svmon -P -t 15 -O summary=basic,unit=MB
```

# Mappings

Check from where a disk comes from and map to VIOS in kdb
```
cvai # vscsi
vfcs # fiber
```
