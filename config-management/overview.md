Overview of various config management systems
===============================================

Ansible
==================

* YAML based 
* Written in Python - can install with pip
* Agentless - uses SSH etc to connect
* Typically run from a control machine (Admin workstations) or using Tower
* Public store of modules etc: Ansible galaxy

Thoughts:
* Good use for easy management of SSH commands to multiple nodes
* SSH based from one machine might not scale well?
* SSH keys for global root access are the keys to the kingdom

Chef
==================

* Ruby based
* Client - server setup
* Cookbooks stored on central server
* Public store of modules etc:  Chef supermarket

cfengine
==================

puppet
==================

salt
==================
