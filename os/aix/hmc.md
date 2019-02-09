HMC
======================================

Stand alone device that manages frames / LPARs

Baisc info:
```
lshmc
lshmc -V # version
lshmc -n # Network info
```

Reboot
```
hmcshutdown -t now -r
```

Monitoring
```
man monhmc
monhmc -r disk -n 1 # Show disk usage every 1 s
```

Show frames
```
lssyscfg -r sys -F name:serial_num:state
```

Show lpars
```
lssyscfg -m $frame -r lpar -F name:state
```

Show WWPNs
```
lshwres -r virtualio --rsubtype fc -m $frame --level lpar | sort
```

Show lpar ref code and history
```
lsrefcode -m $frame -r lpar --filter "lpar_names=$lpar" -F lpar_name:refcode
lsrefcode -m $frame -r lpar --filter "lpar_names=$lpar" -n 5 -F lpar_name:refcode
```

console access
```
vtmenu
```

Kick someone off the console
```
rmvterm -m $frame -p $lpar
```

Find where adapters are assinged
```
lshwres -r virtualio --rsubtype scsi -m $frame --level lpar # vscsi
lshwres -r virtualio --rsubtype fc -m $frame --level lpar #  fiber
```

LPAR booting
```
chsysstate -m $frame -r lpar -o on -f $profile -n $lpar # Power on a profile
chsysstate -m $frame -r lpar -o shutdown -n $lpar --immed # Halt LPAR
```

boot to SMS
```
chsysstate -m $frame -r lpar -o on -n $lpar -b sms -f $profile
```

HMC snapshot for IBM
Login as hscpe
```
pedbg -c -q 4
```
