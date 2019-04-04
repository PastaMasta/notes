SaltStack setup
======================================

Once you've installed the salt master / minion you need to accept the client key on the master

```
$ salt-key --list-all
Accepted Keys:
node0
Denied Keys:
Unaccepted Keys:
node1
node2
```
Then accept per node or all
`` `
$ salt-key --accept-all
$ salt-key --accept node1
```

Salt master by default stores data under /srv/salt/

==================
