@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Dev Runtime Building Script
call env.cmd || goto end

@rem Outline Usage
@rem robocopy %DEPLOY_DIR%\images %BUILD_DIR%\%PROJECTNAME%-images\%PROJECTNAME%\images /e /mir
@rem docker save gitlab/gitlab-ce:latest > %BUILD_DIR%\%PROJECTNAME%-images\%PROJECTNAME%\images\gitlab-gitlab-ce-latest.tar

robocopy %DEPLOY_DIR%\usage\on-windows %BUILD_DIR%\%PROJECTNAME%-on-windows\%PROJECTNAME%\usage\%PROJECTNAME% /e /mir

type %LOCALE_DIR%\build_complete.txt
echo=

:end
exit /b %ErrorLevel%
