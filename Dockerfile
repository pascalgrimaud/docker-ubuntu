FROM ubuntu:trusty
MAINTAINER Pascal Grimaud <pascalgrimaud@gmail.com>

# update
RUN apt-get -y update

# install python-software-properties (so you can do add-apt-repository)
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-software-properties software-properties-common

# set UTF-8 locale
RUN locale-gen en_US.UTF-8 && \
    echo 'LANG="en_US.UTF-8"' > /etc/default/locale

# install utilities
RUN apt-get -y install vim curl wget unzip

# install git
RUN add-apt-repository ppa:git-core/ppa -y
RUN apt-get -y update
RUN apt-get -y install git

CMD ["/bin/bash"]
