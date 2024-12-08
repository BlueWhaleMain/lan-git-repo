# 本地GIT仓库

| 语言   | [简体中文](README.md) | English |
|------|-------------------|---------|
| 翻译进度 | 100%              | 50%     |

面向内部网络的GitLab部署方案。

## 该部署方案提供的功能

* 内部GIT仓库
* 开发环境

| 支持的环境             | Windows                | Linux                  | Mac                |
|-------------------|------------------------|------------------------|--------------------|
| 开发环境              | :white_check_mark:完全支持 | :construction:尚未支持     | :construction:尚未支持 |
| 自动化部署             | :white_check_mark:完全支持 | :construction:尚未支持     | :x:暂不支持            |
| Docker Compose 配置 | :white_check_mark:完全支持 | :warning:未经测试          | :x:暂不支持            |
| Docker 镜像         | :white_check_mark:完全支持 | :white_check_mark:完全支持 | :warning:未经测试      |

## 依赖

* [Docker](https://www.docker.com/)
  * Docker Compose
* [GitLab Community](https://about.gitlab.com/)

## 快速开始

1. `./configure`
2. `docker compose up -d`
3. 访问[localhost](http://localhost)
   * 初始密码：`./dev_runtime/.gitlab/config/initial_root_password`
     * 24小时后失效

## 构建

1. `./build`
2. `./dev_build`中将产生构建结果
   * 可能包含可选的构建内容，请自定义构建脚本行为
