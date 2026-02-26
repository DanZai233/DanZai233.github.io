---
title: "个人obsidian多终端解决方案 iOS Win Linux"
date: 2023-10-13T08:06:05+08:00
slug: "legacy-18"
categories:
    - 技术
tags:
    - 旧博客迁移
---

## 最近了解到了obsidian这个软件

因为最近刚刚更换手机入了iOS阵营，发现这个笔记软件还挺好看，而且网络上面对它的评价还都挺好的就尝试了一下。**一下子就真香了。**

因为平常都使用的vscode，喜欢直接在vscode里面写点markdown，这个软件可以让markdown编写更加直观，装上插件后基本傻瓜式的了。

## 多终端同步方案

我尝试了使用 iCloud + git + webdav 的存储方案：

- **iCloud** 实现iOS设备的同步和一份备份存储
- **git** 实现主要的文档同步，平常最主要使用的同步方法
- **webdav** 连接上面两者的中间人，在windows上面使用obsidian编写文档，通过webdav同步到网盘

基本就是三重备份，我自己只维护git上面的版本，其他的一概不管，主打一个一次部署永久使用。

由于之前搭建的有自己的私有云盘，webdav这一步实现非常简单。这里强烈推荐一下 [Cloudreve](https://cloudreve.org/)，自己用了两年左右十分好用。

使用 obsidian 的 remotely save 插件，经过简单的设置就可以使用 webdav 实现多端的文件同步了。

**总结：** 同步流程非常快，可以设置自动对比拉取和自动推送。iOS那边就更快了，有了iCloud加持每次进入到obsidian后就是最新的文档，十分好用捏~
