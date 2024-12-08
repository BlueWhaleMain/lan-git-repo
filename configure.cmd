@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Dev Runtime Configure Script
call env.cmd || goto end

mkdir %RUNTIME_DIR%\gitlab || exit 1
set CONTAINER_BASE_NAME=gitlab_ce
docker container create --name export_%CONTAINER_BASE_NAME% gitlab/gitlab-ce:latest || exit 1
docker container cp export_%CONTAINER_BASE_NAME%:/var/opt/gitlab %RUNTIME_DIR%/gitlab/data
docker container rm -f -v export_%CONTAINER_BASE_NAME% || exit 1

type %LOCALE_DIR%\configure_complete.txt
echo=

:end
exit /b %ErrorLevel%
