rem echo off
@echo off

set version=17.1.5d
git tag -f %version%
git push --tags --force

docker build --build-arg GID_VERSION=$version% -t gid-unix-developer:latest -t gid-unix-developer:%version% .

if %errorlevel% neq 0 (
    echo Error: Docker build failed.
    exit /b %errorlevel%
)

docker tag gid-unix-developer:%version% gidhome/docker-unix-developer:%version%
docker push gidhome/docker-unix-developer:%version%
docker tag gid-unix-developer:latest gidhome/docker-unix-developer:latest
docker push gidhome/docker-unix-developer
