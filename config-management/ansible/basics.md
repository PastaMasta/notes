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

Lists of hosts to act against, default inventory is in /etc/ansiable/hosts or use ```-i file``` on cli

Can be in many formats, but just stick to YAML or INI

nodes can be put in groups here, you can also use patterns i.e.

```
node[01:10].example.com
```

Will list out those 10 nodes.

Variables can also be setin the inventory per host and at the group level too.


Commands
==================

You can use ansible for running commands on all nodes

Initial node ping check:
```
ansible all -m ping
```

Run adhoc commands
```
ansible all -u vagrant --sudo -a "/usr/bin/echo 'hi mum'"
```

File transfer
```
ansible all -m copy -a "src=/etc/hosts dest=/tmp/hosts"
```
