Chef local-mode
======================================

To run chef-client locally and to use cookbooks local to that machine put them in /root/cookbooks then call them as normal.

```
chef-client --local-mode -r mycookbook
```
