rem echo off
@echo off

set gid_version=17.1.5d
git tag -f %gid_version%
git push --tags --force

echo Building Docker image gid-unix-developer:%version%
echo "docker build --build-arg GID_VERSION=%gid_version% -t gid-unix-developer:latest -t gid-unix-developer:%gid_version% ."
docker build --build-arg GID_VERSION=%gid_version% -t gid-unix-developer:latest -t gid-unix-developer:%gid_version% .

if %errorlevel% neq 0 (
    echo Error: Docker build failed.
    exit /b %errorlevel%
)

docker tag gid-unix-developer:%gid_version% gidhome/docker-unix-developer:%gid_version%
docker push gidhome/docker-unix-developer:%gid_version%
docker tag gid-unix-developer:latest gidhome/docker-unix-developer:latest
docker push gidhome/docker-unix-developer
