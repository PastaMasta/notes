ECR
======================================

re-tag an existing image in ECR:

```shell
DIGEST=sha256:whatever
REPO_NAME=somerepo
MANIFEST=$(aws ecr batch-get-image --repository-name ${REPO_NAME} --image-ids imageDigest=${DIGEST} --query 'images[].imageManifest' --output text)
aws ecr put-image --repository-name ${REPO_NAME} --image-tag NEWTAG --image-manifest "${MANIFEST}"
```
