
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

# Set the version of GiD to install as first parameter
ARG GID_VERSION=17.1.5d

RUN echo "Installing GiD version ${GID_VERSION}..."

# Install GiD with the provided version
RUN ./install-gid.sh ${GID_VERSION}

#clean up
RUN rm -rf /tmp/* && \
	apt-get clean && \
	apt-get autoclean && \
	rm -rf /var/lib/apt/lists/*

# docker build --progress=plain --build-arg GID_VERSION=17.1.5d -t gid:17.1.5d .
# docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY gid:17.1.5d