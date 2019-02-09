Networking
======================================

basics:
```
ifconfig -a | fmt
smitty tcpip
entstat $device
```

Mac address:
```
netstat -ia
lscfg -vl $entX
```

DNS
```
/etc/resolv.conf
# Lookup order:
/etc/netsvc.conf
```

Adapter speed
```
entstat -d $entx | awk '/Media Speed/'
```

Multicast
```
mping -v -r -c 5 -a $mcastIP # Reciver
mping -v -s -c 5 -a $mcastIP # Sender
```

## HBFs
Absolute nightmare

Enable:
```
/usr/sbin/mkdev -c ipsec -t 4
/usr/sbin/mkfilt -v 4 -u -z P
```

Disable
```
/usr/sbin/rmdev -l ipsec_v4
```

list
```
lsfilt
```

Create rules
```
genfilt
```

Activate
```
mkfilt -v 4 -u
```
