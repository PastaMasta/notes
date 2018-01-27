EC2
======================================

Elastic compute cloud

VMs in the cloud and on demand


Instace types:
---------------

On demand
* Fixed rate by the hour or second with no commitment
* Lots of flexability
* Workloads that can't be interrupted

Reserved
* Provide capacity reservation
* big discount on 1 - 3 year terms
* Steady state / predicatble usage
* 3 types:
  * Standard RI - up to 75% off
  * Convertable RIs - up to 54% - can change attributes within paramiters
  * Scheduled - allow to run within time windows - month end etc

Spot
* Bid on resources
* Set maximum price - scale when it's there
* Apps with flexible stop/start/scaling
* non-urgent quiet / cheap period computing
* If you terminate early you pay for the full hour
* If AWS terminate because spot price has gone over your bid limit you get the hour for free

Dedicated hosts
* Physical EC2 server dedicated for our use
* Helps with licensing / legal reasons for multi-tenants
* Can be done on-demand with reservations

Two types of VMs:
* HVM
* Paravirtual

Instance families
---------------

Letter is the type, number is the generation

__DR Mc Gift PX__

D2 - __Dense__
* Dense storage

R4 - __RAM__
* Memory optimised

M4 - __Main choice__
* General purpose

C4 - __Compute__
* Compute optimised

G2 - __Graphics__
Graphics intensive

I2 - __IOPs__
* High speed storage

F1 - __FPGA__
* Field programmable gate arrays

T2 __T2 micro - Cheap general__
* Lowest cost general purpose

P2 - __Pretty Graphics__
* Graphics / general purpose GPU

X1 - __eXtreme memory__
* Extreme memory optimised

EBS volumes
---------------

Storage volumes you attach to EC2 instances
Block based storage

Auto-replicated within a AZ - not replicated between AZs without $$$

EBS volumes cannot be shared between instances - use EFS instead

Volumes must be in the same AZ as EC2 instances

EBS types
---------------

General purpose SSD - (GP2)
* 3 IOPs per GB up to 10K IOPs
* Can burst 3K IOPs for extended periods of time at 3334 GiB and up

Provisioned IOPs SSD - (IO1)
* IO intensive operations
* Ideal for over 10K IOPs
* 20K IOPs per volume

Throughput optimised HDD - (ST1)
* Big data, Data warehouses, logs etc
* Ideally for sequential data
* __Can't be boot volumes__

Cold HDD (SC1)
* Lowest cost storage for infrequent access workloads
* __Can't be boot volumes__

Magnetic (standard)
* Lowest cost per GB
* __IS__ bootable

Encrypted volumes
* Root boot device cannot be encrypted unless you provide your own AMI
* Other volumes can be
* Snapshots of encrypted volumes are automatically encrypted
* Volumes restored from encrypted snapshots are automatically encrypted
* Can't share encrypted volumes with other accounts

EBS root volume backing types
---------------

Two backing types:

EBS backed volumes - normal disks
* Launched from a EBS snapshot

Instance store backed - (Ephemeral Storage)
* Restriced to certain EC2 instance sizing
* More can be added __BEFORE__ the VM starts - not after
* __can't stop or start - only reboot or terminate__
* Less durability than EBS
* Pre-dates EBS
* Launched from a template in S3
* If underlying host dies, everything is lost

EBS Volume upgrades, migration and snapshots
---------------

Volume size can be increased live

Volume type can be upgraded from SSD to provisioned SSD

Volumes can be snapshotted - snapshot can then be converted to a volume
New volume can be in another AZ and of any storage type.

Moving to a new region - snapshot, create AMI, copy to new region, create volume and boot

__Snapshots live in S3__

__Snapshots are incremental__

EBS RAID
---------------

__Never do RAID 5 on AWS__

Typically only used where you need more IOPs than one volume can provide

AMIs
---------------

Amazon machine images - snapshots of VMs

Setup
---------------

* One subnet is in one AZ - can't cross zones!
* Termination protection - off by default
* Default action is to delete EBS volume when instance is deleted

If the hypervisor is in a bad way then you can stop / start and your instance will start on another machine

Scripts can be added during provisioning - standard plaintext script that is run as root during provisioning

Security groups / firewalls
---------------

Basically Virtual firewalls for your instances
* Control inbound and outbound
* First line of defence
* Any rule changes are immediate
* Can have multiple per instance

__Rules are stateful - any inbound rules are automatically allowed back out__

Each region has a default security group that allows traffic between instances in that region

Status checks
---------------

Two main types

System status check
* Checks that the hypervisor is working

Instance status checks
* Ensures that data can get to the OS

Monitoring
---------------

Cloudwatch - provides metrics on lots of basics

Metadata
---------------

curl http://169.254.169.254/latest/meda-data/

Placement groups
---------------

Logical grouping of instances within a AZ
Instances within a AZ have faster networking between themselves - inter AZ / region has higher latency

* Low network latency
* High throughput (10GB)
* Can't span AZs
* Only certain instance types
* Can't merge
* Can't move existing instances into one

---------------
