Overview of various config management systems
===============================================

Ansible
==================

* YAML based 
* Written in Python - can install with pip
* Agentless - uses SSH etc to connect
* Typically run from a control machine (Admin workstations) or using Tower
* Public store of modules etc: Ansible galaxy

* Ansible Tower is the commercial offering, Ansible AWX is the upstream open source version.

Thoughts:
* Good use for easy management of SSH commands to multiple nodes
* SSH based from one machine might not scale well?
* SSH keys for global root access are the keys to the kingdom
* Inventory lists need to be synced or on a central jump host unless using tower

Chef
==================

* Ruby based
* Client - server setup
* Cookbooks stored on central server
* Public store of modules etc:  Chef supermarket
* Cookbook compiling etc happens client side
* runs over https
* Comms initiated by client

cfengine
==================

* Runs on Windows, Linux and traditional UNIX
* Seems very old fasioned, demmos and getting started are old webinars

puppet
==================

* Ruby based
* agent - master setup
* Master server does a lot of the pre-processing, agent just impliments.
* runs over https

Thoughts:
* Docs are ugly / messy and just not easy vs Chef/Ansible


SaltStack
==================

* Python / YAML based
* minion - master setup
* Runs on Windows, Linux and traditional UNIX
* Comms initiated by client
