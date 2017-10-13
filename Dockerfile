FROM ubuntu:16.04

RUN apt-get -y update && apt-get install -y \
build-essential \
module-init-tools \
automake \
git gitk vim \
libmxml-dev \
wget \
python \
ipython \
libtool \
qtcreator \
cmake-curses-gui \
dbus \
ssh \
mpi-default-bin mpi-default-dev gfortran \
xutils-dev \
libxt-dev \
tmux \
mesa-utils binutils

RUN apt-get -y install -y cgdb 
ADD NVIDIA-DRIVER.run /tmp/NVIDIA-DRIVER.run
RUN sh /tmp/NVIDIA-DRIVER.run -a -N --ui=none --no-kernel-module
RUN rm /tmp/NVIDIA-DRIVER.run

RUN useradd -ms /bin/bash mark -G sudo
USER mark
ENV HOME /home/mark
WORKDIR $HOME
