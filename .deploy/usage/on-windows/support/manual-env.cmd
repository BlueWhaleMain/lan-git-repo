@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Deploy Manual Environment Script
set TZ=
set LANG=en_US.utf8
set LC_ALL=

set GITLAB_SSH_PORT=22
set GITLAB_HTTP_PORT=80
set GITLAB_HTTPS_PORT=443

@rem set DATADIR=%UserProfile%\.%PROJECT_NAME%
@rem set GITLAB_CONFIG_DIR=%DATADIR%\gitlab\config
@rem set GITLAB_DATA_DIR=%AppData%\%PROJECT_NAME%-gitlab\data
@rem set GITLAB_LOGS_DIR=%AppData%\%PROJECT_NAME%-gitlab\logs
