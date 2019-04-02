Ansible basics
======================================

Install from yum, should be in the epel


configuration
==================

in /etc/ansible/ansible.cfg

Authentication
==================

Uses SSH keys, but doesn't expose any method for passphrasing, so agents are recomended

Inventories
==================

YAML lists of hosts to act against.

Default inventory is in /etc/ansiable/hosts


Commands
==================

You can use ansible for running commands on all nodes

Initial node ping check:
```
ansible all -m ping
ansible all -u vagrant --sudo -a "/usr/bin/echo 'hi mum'"
```
