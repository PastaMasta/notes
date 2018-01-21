
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

Dedicated hosts
* Physical EC2 server dedicated for our use
* Helps with licensing / legal reasons for multi-tenants
* Can be done on-demand with reservations

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

---------------
