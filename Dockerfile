
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
        libharfbuzz0b
COPY ./install-gid.sh "/tmp/install-gid.sh"
RUN chmod 750 "/tmp/install-gid.sh"
RUN "/tmp/install-gid.sh"
