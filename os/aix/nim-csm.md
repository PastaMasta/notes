NIM
======================================
Management server for OS updates, new builds etc

LPP_source is the repo of packages
SPOT is the boot filesystem

Info
```
lsnim -l $node
```

Deallocate stuck resources
```
nim -o deallocate -a $resource=$value $node
```

LPAR power control
```
dpower -C NIM -n $node query
dpower -C NIM -n $node on
dpower -C NIM -n $node off ```

LPAR console access
```
dconsole -C NIM -n $node
```

Deploy a build from a resource group
```
nim -o bos_inst -a groups=$resourcegroup $node
```

Define mksysb from file
```
nim -o define -t mksysb -a server=$nim -a location=/some/file.mksysb $mksysb_name
```

Trigger mksysb generation on client
```
nim -o define -t mksysyb -a server=$nim -a location=/some/path -a mk_image=yes -a source=$target_node $mksysb_name
```

Add fileset to spot
```
nim -o cust -a filesets=$filesets -a lpp_source=$lpp_source $spot
```

CSM
======================================
Predates NIM, same purpose

Info
```
csmstat -a
lsnode -F
```

LPAR power management
```
rpower -n $node query
rpower -n $node on
rpower -n $node off
rpower -ln $node query # find LED status
```

Query may be incorrect if CSM -> HMC comms are broken, renew credentials:
```
systemid
systemid $ip $user
```
