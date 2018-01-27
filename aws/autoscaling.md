Autoscaling
======================================

Need to create a launch configuration - what you want to launch / scale

Then create an auto-scale group


Auto-scale can trigger based on monitoring or healthchecks
i.e CPU > 90% for x mins or if an instance goes unhealthy - as told by ELB

* Can't just disable an auto-scale group - but you can set the max instances to 0

Setup
---------------

If multiple subnets are chosen instances will round-robin

Notifications can be setup to spam your admins when it kicks off

---------------
