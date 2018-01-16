Identity access management
======================================

basics
---------------

Setting up users, managing levels of access to the console

Lets you federate with other  providers - AD, facebook, linking

MFA

Provide temporary access to users or services

Setup password policies

Integration with loads of other AWS services

PCI DSS compliance

* Roles in AWS can be assigned to specific services
* Policies - defines one or more permissions - to be added to a role, user or group

IAM is global and is not region locked

---------------

Console URL for user login - can setup a alias if preferred

Setup MFA!

Never use root account unless absolutely required!

Setup users right away

Access key ID  +secret access keys - only for programatic Access
Can't use username / password for programatic access - only console

Access keys can be disabled / regenerated in the users page

Polices are in JSON

Permissions
---------------

* Can be user level or group level
* Permissions are inherited from groups
* Policies are a a collection of specific permissions


Roles
---------------

Grant access to entities we trust - i.e. ec2 instance calling s3 stuff
Polices are assigned just like users
