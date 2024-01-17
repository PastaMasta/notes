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

Basic process:

```terraform init``` - Setup any modules/sync state files etc

```terraform plan``` - Work out diff and what to do

```terraform apply``` - Deploy the actual changes

```terraform destroy``` - tidy up

Terraform file language
------------
* Written in HCL
* .tf files are where code is stored - .json version also exists
* Should be UTF-8
* Works mostly in blocks
* Comments are:
  ```
  # Single line
  // Single line
  /* Block comment */
  ```

Blocks:
Containers for other resources, can accept 0,n arguments - this is the "identifier" and must be unique within
module scope

i.e. resource takes resorucetype and the name of that instance as a variable
resource "aws_instance" "someserver" {
ami = "ami-123"
instance_type = "t2.micro"
}

Meta arguments
------------
Can be used with any resoruce type
* depends_on - to force a dependency
* count - used to create x instances of a resource
* for_each - create multiple instances from a map / set of strings
* provider - to force specifiy which provider to use
* lifecycle - Nested block to set lifecycle / steps hooks
* provisioner / connection - take extra steps after creation
* timeouts / retrys - depends on resource type

Terraform modules
------------
Collection of .tf and/or .tf.json.
A module is the top level config files in a dir - nested dir is another module and may not be automatically included.

Top level from where TF is invoked is called the "root module"

Override files
------------
override.tf file - used to override variables, use for local config / testing, don't checkinto git

State files
------------

Holds the state of things at the last time it was deployed / updated etc
On plan / apply tf will compare actual vs state and update/create/delete as required

When config is applied it will do one of, per resource:
* Create new
* Update-in-place
* destroy if not in config but is in actual
* destroy and re-create if API does not support update

!! Sensitive values are retained here !!
So access should be restricted

Input variables
------------

* Like funciton args
* Each input accepted by module needs to have a variable block
* name needs to be unique within the module
* Each variable has these params:
    * Default - any default values
    * Type - input types to be accepted
        * can be sting,number or bool and complex ones like lists / maps
    * Description - info string
    * validation - validation rules
      * Can specify logic / regexes etc + an error message
    * sensitive - hides output
      * Any resources that depend on a sensitve variable will also be maked as sensitive
      * Provider errors might also show these too

Can be accessed by caling:
```
var.var_name_here
```

They can only be acessed from within the module where it was declared

How to set input variables
------------------------------

* Set in TF cloud workspace
* With -var CLI options
* With .tfvrs file or .tfvars.json
* From environment vars
  * Terraform searches for any TF_VAR_whatever variables
    where the bit after TF_VAR_ matches a variable name

Terraform automatically loads if present:
* terraform.tfvars or terraform.tfvars.json
* Any file ending in .auto.tfvars or .auto.tfvars.json

Variables have a precidence if specified in multiple places
Lowest to highest:
* Environment vars
* terraform.tfvars if present
* terraform.tfvars.json if present
* any *.auto.tfvars/*.auto.tfvars.jso in lexical order
* any -var / -var-file CLI args, in order specified

Output variables
-----------------
Return values of a TF module

Example usage:
* Chile module returning to parent
* root module printing out values in CLI
* root module outputs accessed via other configurations like remote state data

Each must be specified via an output block:
```
output "output_name" {
value = somesresource.someoutput
description = "some string"
sensitive = true/false
depends_on = someresource # use as a last resort
}
```

Child outputs are avaibile in root module under:
```
module.modulename.outputname
```

Terraform will try to work out a dependency tree from outputs in nested modules etc

Local variables
----------------

Used to centralise variables into one place where it's used in lots of place
(Tag values, AWS region etc)

Expressed in a locals {} block
Can reference other values in same module

Once declared, can be refered to as local.variablename

Modules
--------
Container for mulitple reosurces - like a chef cookbook or ansible role
Collection of .tf / .tf.json

3 types of module:
* Root module - top level in main working dir
* child modules - called by root, can be called multiple times in same root module
* published modules - hosted on a private/public registery

Example:
child modules would be under the same git repo as root module vs published
are hosted elsewhere and are sourced in?

Called by a module block:
```
module "name for module instance" {
source = "./path/to/dir"
# Then specify any other vars here to feed to module inputs
}
```

Module argument types
* source - where to get from
* version - w
* input variables
* meta args also supported

** If moving between modules**
Terraform might see the resources as being new so might delete etc - check plan carefully
you can use ```terraform state mv``` comand to tell TF that resources have moved about

Module sources
---------------
Where TF will pull down a module from, these can be:

* local paths - not installed with terraform init
* git repos
    * With extra support for bitbucket,github etc
* Terraform registery
* s3 buckets
* http URLs

Expressions and functions
--------------------------
Expressions - reference compute values
    * String
    * number bool
    * list/tuples
    * map/object/hash - key/value pairs
    * null
    * Special ones
        * Resources
        * Input variables - var.somename
        * Local values
        * child module outputs
        * data sources
        * filesystem and workspace info
        * block local values - like self etc

Conditions:
```
condition ? value_if_true : value_if_false
var.a != "" ? var.a : "default-a"  # Use to set a default, if empty
```
All vars in a condition need to be the same type - but TF will try and convert automagically

Functions - transform / combine values

Has some built ins you can call from an expression:
funcion_name(args1,args2)

eg:
```
a = min([1,2,3])
```
would resule in a=1


Statefile Backends
---------------------

Each tf config can have it's own backend where statefile snapshots are stored.
This is local or remote

local for testing/begineer
remote for others

note: can't add new backends with plugins

**only used when calling terraform from CLI (or scripts)**
Terraform cloud does it's own thing

s3 is supported with dynamoDB for state file locking

backend is defined in a block:
```
terraform {
  backend "name" {
  }
}
```

Limitations:
* Only backend supported
* Cannot refer to named values

Run ```terraform init``` if you ever change your backend
Reccomended to backup state if migrating

Local state
  - Host system manages lock files

s3:
  * stores state file in s3 bucket at specified path
  *  support dynamodb for managing locking / consistancy

Working with state
--------------------
Used to store current state of things, metadata, optimise large deployments etc
Also stores a cache of all attribue values for all resources so it doesn't need to query every time
Store locally if only one user, remotely if working in a team

Locking:
* Not supportd by every state type
* TF outputs error if taking too long to get a lock

state can be force unlocked - but need to be very careful as it can corrupt everything

Workspaces
--------------
Seperate instances of state data for mulitple deployments of the same infra / tf stack
