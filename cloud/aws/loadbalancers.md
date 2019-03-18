Load balancers
======================================

Two types

Application load balancers
* Layer 7
* New recommended from Amazon

Classic load balancers
* Layer 4

Can be AWS internal or external facing

Always use DNS name as your load balancer - AWS don't tell you the public IP
Can't change the DNS name of the balancer - point your domain at this.

Gives some nice cloudwatch metrics

---------------
