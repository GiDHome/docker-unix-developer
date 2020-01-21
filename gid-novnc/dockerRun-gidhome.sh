echo "GiD in this docker is in ACADEMIC version"
# docker run -p 8083:8083 -ti gidhome-novnc "$@"
echo docker pull gidhome/gid-novnc:latest
docker run -p 8083:8083 \
    --mount type=bind,source=`pwd`,target=/root/ExternalStorage \
    -ti gidhome-novnc
echo docker run -p 8083:8083 -ti gidhome/gid-novnc:latest /bin/bash
