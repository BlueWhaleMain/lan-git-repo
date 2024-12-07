# 部署帮助文档

## Avatar访问问题

修改`/etc/gitlab/gitlab.rb`（对应挂载位置参考配置内容）

```
gitlab_rails['gravatar_plain_url'] = 'http[s]://gravatar.loli.net/avatar/%{hash}?s=%{size}&d=identicon'
gitlab_rails['gravatar_ssl_url'] = 'https://gravatar.loli.net/avatar/%{hash}?s=%{size}&d=identicon'
```

`docker compose exec gitlab gitlab-ctl reconfigure`
