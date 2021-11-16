Tagging
======================================

Dump all resources with tags:
```
aws --profile ${profile} resourcegroupstaggingapi get-resources --region ${region} > "${profile}-${region}-resourcedump-$(date --iso-8601).json"
```
