---
title: "SSH克隆github仓库：连接被远程主机关闭"
date: 2023-04-22T16:05:00+08:00
slug: "legacy-11"
categories:
    - 技术
tags:
    - 旧博客迁移
---

今天终于是完全配置好了虚拟机的静态IP，但是在使用SSH克隆我自己的仓库的时候一直报错。

执行：

```bash
ssh -T git@github.com
```

返回了：

```bash
kex_exchange_identification: Connection closed by remote host
Connection closed by 198.18.0.183 port 22
```

后来尝试了各种方法，开始以为是我虚拟机的SSH key没有配置到github上面，反复测试了几轮发现根本没问题。然后又是测试防火墙，发现根本没开。最后意识到可能问题出在我的主机的网络连接上面，果然发现自己的梯子封了 github 22 端口的连接。

**解决办法：** 将 Github 的连接端口从 22 改为 443 即可。修改 `~/.ssh/config`，添加如下段落：

```bash
Host github.com
    HostName ssh.github.com
    User git
    Port 443
```

测试：

```bash
ssh -T git@github.com
# Hi xxx! You've successfully authenticated, but GitHub does not provide shell access.
```
