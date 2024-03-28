IAM SSO
===============================================

Dump all permission set details:

```
sso_arn="arn:aws:sso:::instance/ssoins-whatever"
for ps_arn in $(aws sso-admin list-permission-sets --instance-arn ${sso_arn} --max-items 999 | jq .PermissionSets[] -r) ; do
  aws sso-admin describe-permission-set --instance-arn ${sso_arn} --permission-set-arn ${ps_arn}
done
```
