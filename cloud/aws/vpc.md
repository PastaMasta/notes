vpc
======================================

Virtual data-center in the cloud:w

Every region has a default VPC

Logically isolated section of AWS

Hardware VPN connections to link internal to AWS

__One subnet is in one AZ__

Any standard internal IP range is usable
* 10.0.0.0/8
* 172.16.0.0/12
* 192.168.0.0/16

__One Internet gateway per VPC__

Up to 5 VPCs by default - can go up if you ask Amazon nicely

VPCs contain
* Internet gateways (or virtual private gateways)
* Route tables
* network Access control lists
* Subnets
* Security groups

Network ACLs are stateless
* New rules need outboud and inbound rules setup

Security groups are stateful
* New inbound rules allow same data back out

Default vs custom
---------------

Default
* Default is out of the box friendly
* All subnets are internet accessible
* Each EC2 instance has public + private

VPCs peering
---------------

* Can setup a direct network route using private IP addresses
* behave the same as if they were in the same network
* Can peer with VPCs in other AWS accounts
* Always setup in hub and spoke - 1 central peers with up to 4 others
* __No transitive peering__

Setup
---------------

When a new VPC is created:
* Default NACL
* Default security group
* Default route table
* No subnets
* No internet gateway

Subnets
* 5 IPs are lost per subnet e.g. in a 10.0.0.0/24
  * .0 is the network name
  * .1 is the router
  * .2 is reserved for DNS - base +2 in VPC and subnet
  * .3 is reserved for future use
  * .255 is broadcast - __broadcast is not supported in VPC__
* Enable or disable auto-public ip assignment


---------------
