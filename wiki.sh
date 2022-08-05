#! /bin/bash
[[ -n ${DEBUG} ]] && set -x

docker container stop gollum
docker run --rm --name gollum -d -p 4567:4567 -v $(pwd):/wiki gollumwiki/gollum:v5.3.0

if [[ -n ${WSL_DISTRO_NAME} ]] ; then
  cmd.exe /C start http://127.0.0.1:4567
fi
