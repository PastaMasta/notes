Hardware and devices
======================================

Show firmware
```
lsmcode
```

Location codes
```
lscfg -l
lscfg -l $device
```

List adapters
```
lsdev -Cc adapter
```

# Hardware overview
* LPAR == vm
* LPARS run on a frame
* LPARS and frames are managed by a HMC
* frames are made up of one or more CECs
* Each frame has an onboard controller (FSP) with an ASMI interface
