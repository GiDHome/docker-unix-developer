docker stop gidhome-novnc
docker rm gidhome-novnc
echo docker system prune
echo docker image prune -a --filter "until=12h"
