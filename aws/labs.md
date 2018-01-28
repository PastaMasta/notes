Labs
======================================

Basics to practice:

S3
---------------

- [x] Create bucket - make it public
- [x] Create bucket across the world, setup a CDN for it

EC2
---------------

- [ ] Set up a EC2 instance in region A, move it to region B
- [ ] Resize existing disks
- [ ] create a AMI
- [x] Setup a load balancer
- [x] Setup an auto-scaling group

IAM / roles
---------------

- [x] Setup user
- [x] Give user access to a specific s3 bucket
- [x] Setup access keys, destroy instances via the cli

VPCs
---------------

- [ ] Setup custom VPC with seperate subnets for internal and external
- [ ] Setup routes between internal and external so front end can talk to back end

Clever things to experiment with
---------------
- [ ] Automate updating of security groups based on my public IP
- [x] Setup roles to allow for an ec2 instance to self terminate i.e. simulate terminate on shutdown option
- [ ] Auto update roles to allow an instance to only kill itself
- [ ] VPN to VPC

---------------
