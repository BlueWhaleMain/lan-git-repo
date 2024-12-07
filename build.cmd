@if "%DEBUG%" == "" @echo off
@rem Lan Git Repo Dev Runtime Building Script

docker -v || exit 1

@rem Outline Usage
@rem robocopy  %~dp0.deploy\images %~dp0dev_build\lan-git-repo-images\lan-git-repo\images /e /mir
@rem docker save gitlab/gitlab-ce:latest > %~dp0dev_build\lan-git-repo-images\lan-git-repo\images\gitlab-gitlab-ce-latest.tar

robocopy  %~dp0.deploy\usage\on-windows %~dp0dev_build\lan-git-repo-on-windows\lan-git-repo\usage\lan-git-repo /e /mir

echo Complete.
