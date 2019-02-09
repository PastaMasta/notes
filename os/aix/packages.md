Packages
======================================

## installp
Install
```
installp -pgaXd . mysoftware
```
Uninstall
```
installp -pu sompackage
```

Commit Packages
```
installp -pC
```

## oslevel

```
oslevel -s
oslevel -r # pre 5.2
```

Show known service packs / technology levels
```
oslevel -sq
oslevel -rq
```

Show filesets lower or greater than $oslevel
```
oslevel -s -l $oslevel
oslevel -s -g $oslevel
```

## Packages
Recreate table of contents
```
inutoc ./
```

convert IBM U*.bff to something useful
```
bffcreate -c -d ./
inutoc ./
```

Show what packages are in a bff
```
bffcreate -l -d ./
``

# efixes
```
emgr -l # list
emgr -e ./file.efix # install
emgr -b -r -L $fix # remove
```
