docker build -t gidhome-novnc -f ./Dockerfile-gidhome .
echo ... eventually docker build --no-cache -t gidhome-novnc -f ./Dockerfile-gidhome .
echo docker tag gidhome-novnc gidhome/gid-novnc:latest
echo docker push gidhome/gid-novnc:latest
