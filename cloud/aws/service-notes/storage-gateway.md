Storage gateway
======================================

Mechanism to connect an local device to AWS
VM image you run in your DC

async copy of data to S3 / Glacier

Four main types:

File gateway - NFS
* Flat files in S3

Volumes gateway
* iSCSI
* Two types
  * __Stored volumes__
  * __Cached volumes__

Tape Gateway
* Virtual tape library - VTL
* Virtual tapes into S3 -> Glacier

File gateway
---------------

* Files are stored in S3 buckets - provided locally as a NFS share
* Flat files only - it's just S3
* Gateway can run in AWS too

Volume gateway - Stored volumes
---------------

* Provides iSCSI block based storage
* Complete copy on site
* Data written to volumes is local then async'ed up to S3 as EBS incremental snapshots
* 1GB - 16TB

Gateway VM provides storage from locally provided disks then sends to AWS

Volume gateway - cached volumes
---------------

* S3 as primary data storage
* Recent data local
* Up to 32TB in size

Tape gateway
---------------

* VTL interface - can interact with existing tape stuff
* Provides as iSCSI

---------------
