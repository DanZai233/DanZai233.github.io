---
title: "Linux虚拟机配置网络找不到本地ip地址"
date: 2022-07-18T09:25:49+08:00
slug: "legacy-180"
categories:
    - 技术
tags:
    - 旧博客迁移
---

`ifconfig` 之后显示 eth0，但是没有显示 "inet/地址/广播/掩码/" ？

先用 `sudo dhclient eth0` 更新IP地址，然后运行 `sudo ifconfig eth0`。

如果还没有ip，直接进行重启：`reboot`

或者查看DHCP服务是否关了。
