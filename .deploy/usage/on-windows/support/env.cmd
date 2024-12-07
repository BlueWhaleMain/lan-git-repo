@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Deploy Environment Script
set PROJECT_NAME=lan-git-repo
set INSTALLER_DIR=%~dp0..
set INSTALL_DIR=%INSTALLER_DIR%\..\..

call %~dp0manual-env.cmd

set DATADIR=%UserProfile%\.%PROJECT_NAME%
set GITLAB_CONFIG_DIR=%DATADIR%\gitlab\config
set GITLAB_DATA_DIR=%AppData%\%PROJECT_NAME%-gitlab\data
set GITLAB_LOGS_DIR=%AppData%\%PROJECT_NAME%-gitlab\logs
