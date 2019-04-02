Ansible overview
======================================

Agentless - uses SSH keys / winRM (Large scale limitation?)

Terms:

* Playbook - (Chef cookbook)
* inventories - lists of hosts
* modules - (chef resource)

It's in the EPEL repo

Only control node needs to have ansible installed.


Playbooks
==================

* YAML based - end state description

```
Playbook (cookbook)
  plays (recipe)
    tasks (resource call)
      modules (actual resource)
```

Tasks are run sequentially
Handlers run once at the end of play.

Role: Self contained playbook

Variables
==================

* Sourced from playbooks, files discovered things (facts)


Inventories
==================

Lists of servers
* Static files, ranges scripts etc
* Dynamic lists from APIs etc
* Also YAML based

Ansible Tower
==================

UI / API for centralising runs etc
Define roles / responsibilities
ACLs etc

Galaxy
==================
Chef supermarket equiv


