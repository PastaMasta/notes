#! /bin/bash
[[ -n ${DEBUG} ]] && set -x

docker-compose down

export REF=$(git branch --show-current)
echo "Ref is: $REF"
docker-compose up --detach --always-recreate-deps --renew-anon-volumes

if [[ -n ${WSL_DISTRO_NAME} ]] ; then
  cmd.exe /C start http://127.0.0.1:4567
fi
