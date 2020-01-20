
FROM thewtex/opengl

WORKDIR /gid
COPY ./install-gid.sh "/tmp/install-gid.sh"
RUN chmod 750 "/tmp/install-gid.sh"
RUN "/tmp/install-gid.sh"
