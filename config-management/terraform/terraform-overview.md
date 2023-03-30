Terraform overview
===============================================

IaC tool for deploying and managing infa on multiple providers / platforms.

can do low level like compute / storage and high level like apps etc

Main components:
- terraform config file
- terraform vars file

TF uses those to create an execution plan

TF uses plan to talk to provider of choice via their APIs, provider then builds the infra

TF then creates a statefile of what it has created / deployed (inertia navigation)

TF creates a resource graph on dependant resources

```
terraform -install-autocomplete
```


