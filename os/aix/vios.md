VIOS
======================================

VM that has all real hardware adapters assigned to it and passes through disks and networking

Usual login is padmin
Get real root shell
```
oem_setup_env
```

Run padmin commands from real root
```
/usr/ios/cli/ioscli $command
```

oslevel
```
ioslevel
```

# SEA - Shared ethernet adapter
Used to failover traffic between VIO servers

Find adapter - look for SharedEthernetAdapter
```
lsmap -all -net
```

Fail over and back
```
chdev -l $entX -a ha_mode=standby # failover
chdev -l $entX -a ha_mode=auto # failback
```

Check if primary
```
entstat -d $entX | grep -i primary
```

# VSCSI
Here SAN disks are assigned to VIOS server then re-presented down to LPARS - so LPARS don't need drivers etc

Find next free disk
```
lspv -free
```

Check that hdiskX is the same on each VIO
```
oem_setup_env
lsattr -El $hdiskX | grep unique_id
```

# Fiber adapters

Show SAN ports
```
lsnports
```
Show virtual fiber adapter
```
lsdev -vpd | grep vfchost
```

## Firmware update
```
rpm --ignoreos -ivh ./firmware.rpm
diag -d $fcs0 -T download # Deploy
diag -d $fcs0 -T "download -f -l previous" # Backout

```

# Virtual media store
Used to store ISOs or disk images on VIO to pass down
```
mkrep
lsrep
```

# Load up ISO
```
mkvdev -fbo -vadapter $vhostX # tells you vtoptX
loadopt -f -vtd $vtoptX -disk ./somefile.iso
```
