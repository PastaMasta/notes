SaltStack states
======================================

Salt states == chef cookbooks / ansible playbooks

* YAML based



Running
==================

Either run directly:

```
salt 'node1' state.apply nettools
```

Or use what is in the top file:

```
salt 'node1' state.apply
```

Topfile
==================
The list of what states to apply where, vaguely like the run_list in chef.

```
$ cat top.sls
base:
  '*':
    - vim
  node0:
    - nettools
$
```



==================
