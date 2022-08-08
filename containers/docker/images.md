Docker image
================================

Docker images are made up of layers
Layers are cached, so all other containers that use the same layers can re-use them

Images can be based on other images - the parent image

You don't need to create the whole image from scratch each time, you can build off of an existing image

You can also create image from running container:
```
docker commit some_container new_image_name
```

But you really want to use a dockerfile so it's all IAC etc

Ports need to be exposed in the image (And also at run time too?)

## Images
Pre-pull down images:
```
docker pull someimage:sometag
```

List images:
```
docker image ls
```

Remove:
```
docker image rm image-name
docker image prune -a
```

## Dockerfiles

Each line in a dockerfile is a layer

```COPY``` is just for local files
```ADD``` can pull in from URLS

last line is ```CMD``` which is the command the container runs when launched, should be passed an array of arguments.

### Creating from scratch
```
FROM scratch
COPY hello /
CMD ["/hello"]
```

Build it:
```
docker build . -t myimagetag
```

## DockerHub
Create repos like with git

Push image to DockerHub Repo
```
# Login to dockerhub
docker login
docker push username/repo:tagname
```
