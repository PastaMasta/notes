RDS
======================================

Find network interfance eni IDs for a RDS cluster:

There is no direct way in AWS and APIs for this - but you can create and attach an empty security group to the RDS.

1. Create a new empty security group with no rules
2. Attach SG to RDS instance / cluster
3. Search for security group ID in "Network Interfaces" to find the ENIs attached to RDS
