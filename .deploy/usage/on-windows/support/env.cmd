@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Deploy Environment Script
set PROJECT_NAME=lan-git-repo
set INSTALLER_DIR=%~dp0..
set INSTALL_DIR=%INSTALLER_DIR%\..\..

@rem i18n
wmic os get locale | find "0804" >nul && goto locale_zh_CN

goto locale_failure

:locale_zh_CN
set LOCALE_DIR=%~dp0locales\zh_CN
goto locale_complete

:locale_failure
set LOCALE_DIR=%~dp0locales\en_US

:locale_complete

call %~dp0manual-env.cmd

set DATADIR=%UserProfile%\.%PROJECT_NAME%
set GITLAB_CONFIG_DIR=%DATADIR%\gitlab\config
set GITLAB_DATA_DIR=%AppData%\%PROJECT_NAME%-gitlab\data
set GITLAB_LOGS_DIR=%AppData%\%PROJECT_NAME%-gitlab\logs
