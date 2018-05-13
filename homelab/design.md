Homelab design
======================================

These are the general requirements I have for my homelab:

* Provide NAS capabilities
* Provide Service hosting capabilities
* Provide learning environments for cool stuff
* Provide backup solutions for my devices
* Provide alerting, monitoring and performance metrics

Based on the current hardware I own this will be condensed down to a single "master" server which acts as the fileserver and service host (via VMs / containers)
My current desktop / workstation will  host any temporary VMs

Master server
---------

Currently a little x86_64 box running 4 disks in zfs raid 10 + boot ssd

* Hosts any permanent VMs / containers / services
* PXE build capability
* Fileserver - http, nfs, smb
  * Provides read-only access to "public" files
  * Common document share only accessible from "Desktops"
  * Common virtualiasation storage only accessible from hypervisor machines
* Backup location for local devices
* Shipping of backups off-site
* User homeshares

Common data structure
-------------------

All machines have a common set of directories under /data - enforced by chef-base::data-repo
These will automount from the master server as required

```
/data/
├── backup
├── docs
├── repo
├── users
└── virt
```

-------------------
