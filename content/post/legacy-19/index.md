---
title: "linux 根目录容量不足问题"
date: 2023-10-13T08:08:25+08:00
slug: "legacy-19"
categories:
    - 技术
tags:
    - 旧博客迁移
---

## linux 根目录容量不足问题

在linux使用过程中发现自己的根目录满了，想要进行扩容。

### 扩容步骤

1. 先把虚拟机的虚拟磁盘扩容
2. 进入虚拟机内查看分区：`df -h`
3. `sudo fdisk /dev/sda` 进入fdisk
4. 输入 `p` 查看当前磁盘柱区的开始结束，记录下开始位置
5. 输入 `d` 删除根目录分区
6. 输入 `n` 创建新分区（**注意：是否删除签名时选 N**）
7. 输入 `w` 保存并退出
8. `sudo blkid` 查看新分区的 PARTUUID
9. `sudo resize2fs /dev/sda2` 将磁盘空间重新划分
10. 找到 boot 目录下的启动配置文件，将 PARTUUID 更换成新的
11. `sudo reboot` 重启生效
