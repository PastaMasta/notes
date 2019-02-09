mksysb
======================================

Create backup
```
mksysb -i ./`uname -n`.mksysb
```

List whats in the mksysb
```
lsmksysb -lf ./file.mksysb
```

Restore files from mkysysb
```
restorevgfiles -f ./somefile.mksysb ./target_file
```

Copy running rootvg to another disk
```
smitty alt_clone
```
