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

AMIs
---------------

Amazon machine images - snapshots of VMs

Setup
---------------

* One subnet is in one AZ - can't cross zones!
* Termination protection - off by default
* Default action is to delete EBS volume when instance is deleted

Security groups
---------------

Basically Virtual firewalls for your instances

Can be tagged too

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

---------------
