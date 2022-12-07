Docker overview
================================

Docker image - single package that contains everything needed to run.
Container - runtime instance of an image

basic commands cheat sheet:

```
## Display Docker version and info
docker --version
docker version
docker info

## Execute Docker image
docker run hello-world

## List Docker images
docker image ls

## List Docker containers (running, all, all in quiet mode)
docker container ls
docker container ls --all # shows exited containers
docker container ls -aq

## Get info on container
docker inspect somecontainer

## Run a shell on a container
docker exec -it somecontainer bash
```

## Containers

```
## Run a container with restart protection etc
## Restart can have different behaviours based on reboots, fails etc
docker run -dt --restart always alpine

## Run an interactive container that self-deletes after finishing
docker run -it --rm alpine

## Start / stop containers
docker start container_name
docker stop container_name

## Run things against a container
docker exec container_name somecommand
docker exec -it container_name /bin/bash

## Copy files in / out
docker cp container_name:/somefile ./
docker cp ./somefile container_name:/somefile

## Clean up containers
docker container prune # deletes all stopped containers

## Rename container
docker rename old new

## Show docker container performance stats
docker stats
docker stats somecontainer
```

## create image from running container

You can launch a container, customise it, then commit it as a new image to run again
```
docker commit some_container new_image_name
```

## Networking
```
## launch contaienr with ports exposed to host
docker run -p 80:80 -d httpd
curl localhost:80
```

Ports need to be exposed in the image before they can be published externally to the host

## Volumes

Used to store persistant data for containers.
Stored on the host, mounted inside the container

```
docker volume ls
docker volume create myvol
```
