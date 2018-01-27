AWS CLI
======================================

Install AWS CLI tools:
```
pip install awscli --user
aws configure
```

Credentials
---------------

User access keys are less secure than roles
__Never keep keys on AWS__

S3
---------------

Copy all objects between buckets
```
aws s3 cp --recursive s3://bucket1 s3://bucket2
```
---------------
