@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Command Line Interface

call %~dp0support\env.cmd

if "%1" == "" set errorlevel=1 & goto help
if "%1" == "configure" goto configure
if "%1" == "install" goto install
if "%1" == "uninstall" goto uninstall

:help
echo "%0 <configure | install | uninstall [purge [-y]]>"
goto end

:configure
if exist .env (
  echo [i] Will be overwritten.
)
notepad %~dp0support\manual-env.cmd
pause
call %~dp0support\configurer.cmd
goto end

:install
if not exist .env (
  echo [!] Must configure first.
  set errorlevel=1 & goto end
)
call %~dp0support\runtime-fixer.cmd || goto end
call %~dp0support\installer.cmd
goto end

:uninstall
call %~dp0support\uninstaller.cmd %2 %3
goto end

:end
exit /b %errorlevel%