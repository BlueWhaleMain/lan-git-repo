@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Deploy Uninstaller Script
call %~dp0env.cmd

docker compose down || goto end

if "%1" == "purge" goto purge

goto end

:purge
if "%2" == "-y" goto purge-silent

rmdir /s %DATADIR%
rmdir /s %GITLAB_DATA_DIR%
rmdir /s %GITLAB_LOGS_DIR%

goto end

:purge-silent
rmdir /s /q %DATADIR%
rmdir /s /q %GITLAB_DATA_DIR%
rmdir /s /q %GITLAB_LOGS_DIR%

goto end

:end
exit /b %errorlevel%
