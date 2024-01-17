Terraform Commands
===============================================

Init
```
terraform init
```

fmt
Checks the file syntax / linting
```
terraform fmt
```

Providers
```
terraform providers  # Find out info on what providers are needed
```

Plan
```
terraform plan
terraform plan -out ./tf.plan  # To run later/save etc
terraform plan -destroy  # Plan destruction
```

Apply
```
terraform apply
terraform apply ./tf.plan  # Apply specific plan
terraform apply -target=someresource  # Only apply changes to a specific resource
terraform apply -var somekey=somevalue  # Pass in variables on CLI
terraform apply -var-file="somfile.tfvars"  # Specify a tfvars file to use
terraform apply -replace
```

Taint
Tell terraform that a resource is borked - this has been replaced by -replace in apply
```
terraform taint module.path.to.resource
```

Remove everything
```
terraform destroy
```

Terraform console:
Test out functions etc
```
terraform console
```

State
```
terraform state
terraform state list  # list all resources in a statefile
terraform state show  # shows attrs for a resource in statefile
terraform state mv  # move resources around if moving config between modules
terraform state rm  # remove resources from statefile so TF no longer tracks them
terraform state pull # pull down from remote for local modifying
terraform state push # push to backend
```
