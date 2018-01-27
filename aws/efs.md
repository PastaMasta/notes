EFS - elastic file system
======================================

File storage for EC2 instances

Capacity is "elastic" and auto grows / shrinks - vs static sized EBS

* Supports NFS
* Only pay for storage used
* Scale to petabytes
* Thousands of concurrent NFS connections
* Stored across multiple AZs in region
* __Block based vs S3 object based__
* __Read after write consistency__
* NFSv4

Setup
---------------

Instances need to be in the same security group as the EFS volume

Ensure nfs-utils is installed

Amazon provides the mount command which pulls the right details from ec2 metadata



---------------
