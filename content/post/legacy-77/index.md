---
title: "原神私服搭建教程（Linux端）"
date: 2022-05-10T12:56:00+08:00
slug: "legacy-77"
categories:
    - 技术
tags:
    - 旧博客迁移
---

## 准备工作

首先下载jdk17

```bash
wget https://download.oracle.com/java/17/archive/jdk-17.0.2_linux-x64_bin.rpm
```

安装jdk17

```bash
rpm -ivh jdk-17.0.2_linux-x64_bin.rpm
```

然后安装宝塔面板

```bash
yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
```

从宝塔面板安装MongoDB。

## 构建项目

项目仓库：[Github:Grasscutter](https://github.com/Grasscutters/Grasscutter)

```bash
git clone https://github.com/Grasscutters/Grasscutter.git
cd Grasscutter
chmod +x gradlew
./gradlew jar # Compile
```

在项目根目录中找到 grasscutter.jar，cd 到所在目录然后输入

```bash
java -jar grasscutter.jar
```

构建完成后会多出一个 resource 文件夹，需要再去 [Resource](https://github.com/Koko-boya/Grasscutter_Resources) clone 下来 resource 文件夹并将里面的东西复制进 resource 内。

之后再启动即可。

## 配置修改

打开根目录下的 config.json 进行编辑，修改端口和用户权限等配置。

其中的用户默认权限可以在 [项目 wiki](https://github.com/Grasscutters/Grasscutter/wiki/Commands) 中找到相关指令。

## 证书配置

将根目录下的 keystore.p12 复制到 `/etc/pki/ca-trust/source/anchors` 路径下（一定要留一份在根目录里！），然后重载：

```bash
update-ca-trust
```

最后再启动服务器就大功告成了。**记得在安全组放开端口哦！**
