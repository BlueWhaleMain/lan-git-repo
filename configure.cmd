@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Dev Runtime Configure Script
docker -v || exit 1
set CONTAINER_BASE_NAME=gitlab_ce

mkdir .\dev_runtime\gitlab || exit 1
docker container create --name export_%CONTAINER_BASE_NAME% gitlab/gitlab-ce:latest || exit 1
docker container cp export_%CONTAINER_BASE_NAME%:/var/opt/gitlab ./dev_runtime/gitlab/data
docker container rm -f -v export_%CONTAINER_BASE_NAME% || exit 1

echo Complete.
