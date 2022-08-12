#! /bin/bash
[[ -n ${DEBUG} ]] && set -x

docker-compose down
docker-compose up --detach

if [[ -n ${WSL_DISTRO_NAME} ]] ; then
  cmd.exe /C start http://127.0.0.1:4567
fi
