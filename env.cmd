@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Develop Environment Script

@rem i18n
wmic os get locale | find "0804" >nul && goto locale_zh_CN

goto locale_failure

:locale_zh_CN
set LOCALE_DIR=%~dp0locales\zh_CN\cmd
goto locale_complete

:locale_failure
set LOCALE_DIR=%~dp0locales\en_US\cmd

:locale_complete

@rem Runtime check
docker -v || exit /b %ErrorLevel%

@rem Constant
set DATADIR=%~dp0.dev
set RUNTIME_DIR=%~dp0dev_runtime
set DEPLOY_DIR=%~dp0.deploy
set BUILD_DIR=%~dp0dev_build
set PROJECTNAME=lan-git-repo
