EC2
======================================

Find all disks for given AMIs

```
AMIs="ami-1234 ami-5678"
aws ec2 describe-images --image-ids ${AMIs} | jq -r '[.Images[]|{Name:.Name,ImageId:.ImageId,BlockDeviceMappings:.BlockDeviceMappings}]|sort_by(.Name)'
```

Get all AMI IDs by a name:

```
aws ec2 describe-images --filters 'Name=name,Values=somename_0.1*,somename_0.2*' | jq -r '[.Images[]|{Name:.Name,ImageId:.ImageId}]'
# or on one line:
#  | jq -r -c '.Images[]|[.Name,.ImageId]|@tsv' | sort -h
```
