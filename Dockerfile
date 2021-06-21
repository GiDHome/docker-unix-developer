
# FROM thewtex/opengl
FROM ubuntu:latest

WORKDIR /gid

ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get -y install \
	xvfb \
	x11vnc \
	supervisor \
	fluxbox \
	net-tools \
	git-core \
	git \
	wget \
        xz-utils \
	curl \
        libglu1-mesa \
        libharfbuzz0b \
	binutils
WORKDIR /tmp
COPY ./install-gid.sh "install-gid.sh"
RUN chmod 750 "./install-gid.sh"
RUN "./install-gid.sh"
