@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Deploy Installer Script
call %~dp0env.cmd

set CONTAINER_BASE_NAME=gitlab_ce
mkdir %DATADIR%\gitlab || goto end
mkdir %GITLAB_DATA_DIR% || goto end
docker container create --name export_%CONTAINER_BASE_NAME% gitlab/gitlab-ce:latest || goto end
docker container cp export_%CONTAINER_BASE_NAME%:/var/opt/gitlab %GITLAB_DATA_DIR%
docker container rm -f -v export_%CONTAINER_BASE_NAME% || goto end

docker compose up -d || goto end

if "%GITLAB_HTTP_PORT%" == "80" (
  echo [+] GitLab: http://localhost/
) else (
  echo [+] GitLab: http://localhost:%GITLAB_HTTP_PORT%/
)
echo Password filepath: %GITLAB_CONFIG_DIR%\initial_root_password
echo Please wait the services startup.

:end
exit /b %errorlevel%
