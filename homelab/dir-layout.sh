#! /bin/bash
[[ -n ${DEBUG} ]] && set -x

dirs="
data

data/backup
data/backup/local
data/backup/local/nas
data/backup/local/nas/docker
data/backup/local/nas/docker/plex
data/backup/local/nas/kvm/vm1
data/backup/local/pc1
data/backup/local/phone1
data/backup/remote
data/backup/remote/github
data/backup/remote/googledrive

data/repo
data/repo/media
data/repo/media/music
data/repo/media/movies
data/repo/media/pictures
data/repo/media/podcasts
data/repo/media/games
data/repo/media/shows
data/repo/software
data/repo/os
data/repo/os/isos

data-fast
data-fast/kvm/
data-fast/kvm/vm1
data-fast/docker/
data-fast/docker/plex
"

mkdir nas

for dir in ${dirs} ; do
  mkdir -p ./nas/${dir}
done

cd nas
tree *
cd ..
rm -rf nas
