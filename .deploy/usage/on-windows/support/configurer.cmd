@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Deploy Configurer Script
call %~dp0env.cmd

set ENV_FILENAME=%INSTALLER_DIR%\.env

echo TZ=%TZ% > %ENV_FILENAME%
echo LANG=%LANG% >> %ENV_FILENAME%
echo LC_ALL=%LC_ALL% >> %ENV_FILENAME%
echo= >> %ENV_FILENAME%
echo GITLAB_SSH_PORT=%GITLAB_SSH_PORT% >> %ENV_FILENAME%
echo GITLAB_HTTP_PORT=%GITLAB_HTTP_PORT% >> %ENV_FILENAME%
echo GITLAB_HTTPS_PORT=%GITLAB_HTTPS_PORT% >> %ENV_FILENAME%
echo= >> %ENV_FILENAME%
echo DATADIR=%DATADIR% >> %ENV_FILENAME%
echo GITLAB_CONFIG_DIR=%GITLAB_CONFIG_DIR% >> %ENV_FILENAME%
echo GITLAB_DATA_DIR=%GITLAB_DATA_DIR% >> %ENV_FILENAME%
echo GITLAB_LOGS_DIR=%GITLAB_LOGS_DIR% >> %ENV_FILENAME%

docker compose config || goto end

type %LOCALE_DIR%\configure_complete.txt
echo=

:end
exit /b %ErrorLevel%
