API gateway
======================================

Export as an openpi swagger file:

```
API_ID="abcd1234"
STAGE="stage1"
aws apigateway get-export --parameters extensions='apigateway' --rest-api-id ${API_ID} --stage-name "${STAGE}" --export-type swagger latestswagger1.json
```
