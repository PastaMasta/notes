Appstream
===============================================

List private image arns


```
aws appstream describe-images --query Images[].Arn --output text | fmt -1
```
