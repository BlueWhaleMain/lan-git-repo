@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Deploy Runtime Fixer Script
call %~dp0env.cmd

docker -v || goto end

if exist %INSTALL_DIR%\images\gitlab-gitlab-ce-latest.tar (
  echo [i] found outline image for GitLab.
  docker load -i %INSTALL_DIR%\images\gitlab-gitlab-ce-latest.tar
) else (
  echo [?] %INSTALL_DIR%\images\gitlab-gitlab-ce-latest.tar not found, may be pull.
  set errorlevel=
)
goto end

:end
exit /b %errorlevel%
