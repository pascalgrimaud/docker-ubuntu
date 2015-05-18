[![logo](https://raw.githubusercontent.com/pascalgrimaud/docker-ubuntu/master/ubuntu_logo.png)]
(http://www.ubuntu.com/)

# Information

The base docker image :

  * [ubuntu:14.04](https://registry.hub.docker.com/u/library/ubuntu/)

The GitHub project :

  * [pascalgrimaud/docker-ubuntu](https://github.com/pascalgrimaud/docker-ubuntu/)

The Docker Hub :

  * [pascalgrimaud/ubuntu/](https://registry.hub.docker.com/u/pascalgrimaud/ubuntu/)


This image is used to set the locale to en_US.UTF-8 and to install :

  * python-software-properties
  * software-properties-common
  * vim
  * curl
  * wget
  * unzip


The Docker builds on [CircleCI](https://circleci.com)
get this error when you attempt to change the locale from an Ubuntu image :

```
Step 3 : RUN locale-gen en_US.UTF-8 && echo 'LANG="en_US.UTF-8"' > /etc/default/locale
 ---> Running in b24799cb6c0a
Generating locales...
cannot change mode of new locale archive: No such file or directory
  en_US.UTF-8... failed
Generation complete.
 ---> 7f9b8ce08b3c
 ```


# Installation
You can clone this project and build with docker command :

```
git clone https://github.com/pascalgrimaud/docker-ubuntu.git
cd docker-ubuntu
docker build -t pascalgrimaud/ubuntu .
```

You can build directly from the [GitHub project](https://github.com/pascalgrimaud/docker-ubuntu/) :

```
docker build -t pascalgrimaud/ubuntu github.com/pascalgrimaud/docker-ubuntu.git
```

Alternately, you can pull the image from [Docker Hub](https://registry.hub.docker.com/u/pascalgrimaud/ubuntu/) ;

```
docker pull pascalgrimaud/ubuntu
```
