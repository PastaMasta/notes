SaltStack commands
======================================

You can directly run commands / module on machines:

```
$ salt '*' test.ping
$ salt '*' pkg.install cowsay
$ salt '*' 
```


You can specify specific nodes, ranges etc:
```
$ salt node1 test.ping
$ salt node[1-2] test.ping
$ salt -G 'os:CentOS' test.ping
```

==================
