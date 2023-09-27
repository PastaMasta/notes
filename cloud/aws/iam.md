IAM
======================================

Assume another role and export credentials

```
roleArnToAssume="arn:aws:iam::123456789012:role/somerole"

read -r AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN <<<$(aws sts assume-role --role-arn ${roleArnToAssume} --role-session-name assumedRole --query "Credentials.[AccessKeyId,SecretAccessKey,SessionToken]" --output text)

export AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN

aws whoami
```
