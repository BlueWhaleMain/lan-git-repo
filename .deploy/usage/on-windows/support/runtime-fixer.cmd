@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Deploy Runtime Fixer Script
call %~dp0env.cmd

docker -v || goto end

if exist %INSTALL_DIR%\images\gitlab-gitlab-ce-latest.tar (
  type %LOCALE_DIR%\outline_image_for_gitlab.txt
  echo=
  docker load -i %INSTALL_DIR%\images\gitlab-gitlab-ce-latest.tar
) else (
  type %LOCALE_DIR%\question_message_head.txt
  echo %INSTALL_DIR%\images\gitlab-gitlab-ce-latest.tar
  type %LOCALE_DIR%\not_found_may_pull.txt
  echo=
  set ErrorLevel=
)
goto end

:end
exit /b %ErrorLevel%
