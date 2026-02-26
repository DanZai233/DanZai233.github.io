
DROP TABLE IF EXISTS typecho_contents;
CREATE TABLE `typecho_contents` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `modified` int(10) unsigned DEFAULT '0',
  `text` longtext,
  `order` int(10) unsigned DEFAULT '0',
  `authorId` int(10) unsigned DEFAULT '0',
  `template` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `password` varchar(32) DEFAULT NULL,
  `commentsNum` int(10) unsigned DEFAULT '0',
  `allowComment` char(1) DEFAULT '0',
  `allowPing` char(1) DEFAULT '0',
  `allowFeed` char(1) DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  `views` int(10) DEFAULT '0',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `slug` (`slug`),
  KEY `created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4;
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('2','关于','start-page','1670242200','1681042053','<!--markdown-->**这是一个记录个人生活、学习、所到之处和所遇之人的网站**
--------------------------','1','1','','page','publish','','0','1','1','1','0','794');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('8','重启博客！','8','1681842540','1681842674','<!--markdown-->**最近天天忙于毕设开发，闲暇之余打算重启博客！**
--------------------------

接下来的内容会偏向于两个方面，分别是**[技术分享][1]**和**[说说][2]**

这次的服务器备份已经做到万无一失，不会再次丢失这么珍贵的数据了

以后的说说也会经常出现我最喜欢的奶淇淋-**锘宝** 今后的日子 请多关照！

  [1]: https://danzaii.cn/index.php/category/study/
  [2]: https://danzaii.cn/index.php/category/note/','0','1','','post','publish','','2','1','1','1','0','710');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('10','虚拟机使用SSH Clone github仓库时连接被远程主机关闭','10','1682230980','1713248632','<!--markdown-->今天终于是完全配置好了虚拟机的静态IP
稍后也会开一个Ubuntu在hyper-v上的静态IP配置教程
但是今天在使用SSH 克隆我自己的仓库的时候一直报错
执行

```bash
$ ssh -T git@github.com
```

返回了

```bash
kex_exchange_identification: Connection closed by remote host
Connection closed by 198.18.0.183 port 22
```

后来尝试了各种方法
开始以为是我虚拟机的SSH key没有配置到github上面
反复测试了几轮发现根本没问题
然后又是测试防火墙 发现根本没开
最后意识到可能问题出来我的主机的网络连接上面
果然发现自己的梯子封了 github 22 端口的连接

测试
```bash
$ ssh -T git@github.com

Hi xxx! You\'ve successfully authenticated, but GitHub does not provide shell access.
```
','0','1','','post','hidden','','0','1','1','1','0','1');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('11','SSH克隆github仓库 ：连接被远程主机关闭','11','1682179500','1682179621','<!--markdown-->今天终于是完全配置好了虚拟机的静态IP
稍后也会开一个Ubuntu在hyper-v上的静态IP配置教程
但是今天在使用SSH 克隆我自己的仓库的时候一直报错
执行

```bash
$ ssh -T git@github.com
```

返回了

```bash
kex_exchange_identification: Connection closed by remote host
Connection closed by 198.18.0.183 port 22
```

后来尝试了各种方法
开始以为是我虚拟机的SSH key没有配置到github上面
反复测试了几轮发现根本没问题
然后又是测试防火墙 发现根本没开
最后意识到可能问题出来我的主机的网络连接上面
果然发现自己的梯子封了 github 22 端口的连接

解决办法
将 Github 的连接端口从 22 改为 443 即可。修改```~/.ssh/config```，添加如下段落即可

```bash
Host github.com
    HostName ssh.github.com
    User git
    Port 443
```

测试
```bash
$ ssh -T git@github.com

Hi xxx! You\'ve successfully authenticated, but GitHub does not provide shell access.
```
','0','1','','post','publish','','0','1','1','1','0','260');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('13','B站追番','13','1682267493','1682267493','<!--markdown-->','0','1','bangumi.php','page','publish','','0','1','1','1','0','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('14','终于写完论文啦','14','1684144752','1684144752','<!--markdown-->论文终于结束了 接下来的一周要准备毕业答辩了 毕设还差一个后台页面没有写完 
呜呜呜 加油加油
锘锘子最近对我也疼爱有加 马上就搞定回去和锘锘子贴贴
谢谢老婆QAQ


![IMG_0675.png][1]

还不错呢 能过就行！！！

  [1]: https://danzaii.cn/usr/uploads/2023/05/3948285628.png','0','1','','post','publish','','0','1','1','1','0','243');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('15','IMG_0675.png','IMG_0675-png','1684144616','1684144616','a:5:{s:4:\"name\";s:12:\"IMG_0675.png\";s:4:\"path\";s:35:\"/usr/uploads/2023/05/3948285628.png\";s:4:\"size\";i:1851722;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','14','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('16','抢救数据计划（在做了在做了）（完成！）','16','1693313760','1702055141','<!--markdown-->## 下次一定！Orz ##

之前的博客因为本人的误操作导致数据全部丢失（其实不是丢了 是服务器坏了导致无法手动备份或导出）
现在水平高了起来 当时机制的我料想到一定有一天可以修好它 所以用腾讯云导出了一份镜像 在大概一个月前我将这个镜像放到oss里面下载了下来 之后因为最近比较忙碌（忙着谈恋爱了） 也没有及时去挂载来查看镜像内容 这周末有空的话就捣鼓一下
希望能恢复数据！ 拜托🙏 
接下来的数据恢复过程我也会留记录 不管是否成功QAQ

最后看看我亲爱的团宝
![IMG_0886.jpeg][1]


----------

TODO： 博客数据恢复


----------

2023年10月13日
笑死！ 根本没去做！！！！
卡在了第一步 如何导入我的镜像到我的Ubuntu虚拟机里面

下周再搞 不急不急

----------

2023年12月19日
当我发布这个博客的时候 数据已经完成抢修！
历史博客已经完全恢复！
后续会把恢复步骤整理一下 总之 感谢一年前的自己（相信一年后的自己）
完完全全是后人的力量啊 当初觉得自己水平不够修好 误打误撞的存了一份镜像 （其实有两份  正式迁移服务器的时候还有一份）但是其中一份的数据库是已经重置之后的 没什么参考价值了
还好自己有留backup的好习惯（哎嘿嘿）
也要感谢大家给予的帮助和指导给了我许多恢复数据的思路

**最后：把数据传给一年后的自己！**

  [1]: https://danzaii.cn/usr/uploads/2023/08/4192250095.jpeg','0','1','','post','publish','','1','1','1','1','0','471');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('17','IMG_0886.jpeg','IMG_0886-jpeg','1693313511','1693313511','a:5:{s:4:\"name\";s:13:\"IMG_0886.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2023/08/4192250095.jpeg\";s:4:\"size\";i:1860837;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','16','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('18','个人obsidian多终端解决方案 iOS Win Linux','18','1697184365','1697184365','<!--markdown-->## 最近一次偶然的冲浪过程中了解到了obsidian这个软件
[obsidian官网][1]
因为最近刚刚更换手机 入了iOS阵营 发现这个笔记软件还挺好看 而且网络上面对它的评价还都挺好的 就尝试了一下
**一下子就真香了**
因为平常都使用的vscode 喜欢直接在vscode里面写点markdown 这个软件可以让markdown编写更加直观 装上插件后基本傻瓜式的了
拯救了不会写markdown的我


考虑到既然有了iPad 不如直接在iPad上面也能写文档 并且可以同步到git上面 让我的文档在我脱离我的电脑时也能编写
我尝试了使用iCloud + git + webdav的存储方案

iCloud实现我的iOS设备的同步和一份备份存储（非常快 非常无感 如果可以 真想让我的全部终端都用iCloud
git实现主要的文档同步 一切基于git 平常最主要使用的同步方法 因为是在linux上面开发 所以需要它来同步
webdav就是连接上面两者的中间人 在windows上面使用obsidian编写文档 每次都拉取最近的版本 然后通过webdav同步到网盘 手机和iPad就通过webdav更新最新的仓库 并且同步到iCloud上面 基本就是三重备份 
我自己只维护git上面的版本 其他的一概不管 主打一个一次部署 永久使用了

---

由于之前搭建的有自己的私有云盘 webdav这一步实现非常简单
[蛋仔云盘][2] 直接就在自己的云盘里面开启了webdav功能
这里强烈推荐一下我使用的云盘  [cloudreve ][3] 自己用了两年左右 十分好用 尤其是配置好aria2之后 直接离线下载想要的任何资源（滑稽
总之 使用任何的网络存储服务开启webdav之后就可以使用obsidian的remotely save插件了 关于obsidian插件的使用在官方社区内有许多指引 我这边就留一个路牌吧 [obsidian中文论坛][4] 经过简单的设置就可以使用webdav实现多端的文件同步了

总结： 同步流程非常快 可以设置自动对比拉取和自动推送线上的backup 基本就是在obsidian写了文档 马上就可以进入到linux里面看到  
iOS那边就更快了 有了iCloud加持 每次进入到obsidian后就是最新的文档 十分好用捏~

  [1]: https://obsidian.md/
  [2]: https://pan.danzaii.cn/
  [3]: https://cloudreve.org/
  [4]: https://forum-zh.obsidian.md/','0','1','','post','publish','','0','1','1','1','0','498');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('19','linux 根目录容量不足问题','19','1697184505','1697184505','<!--markdown-->## linux 根目录容量不足问题

在linux使用过程中发现自己的根目录满了 想要进行扩容 所以留下了这份文档 XD


### 根目录扩容

* 目前的根目录使用的是Linux filesystem
* 期望下一版镜像可以使用lvm来管理逻辑卷
  
扩容步骤：
1. 先把虚拟机的虚拟磁盘扩容
2. 进入虚拟机内 先查看分区 `df -h`
3. `sudo fdisk /dev/sda` 进入fdisk
```bash
mb@arch-vm:~$ sudo fdisk /dev/sda

 

Welcome to fdisk (util-linux 2.39.1).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

 

GPT PMBR size mismatch (67108863 != 209715199) will be corrected by write.
The backup GPT table is not on the end of the device. This problem will be corrected by write.
This disk is currently in use - repartitioning is probably a bad idea.
It\'s recommended to umount all file systems, and swapoff all swap
partitions on this disk.

 


Command (m for help): m
```

4. 输入p 查看当前磁盘柱区的开始结束 记录下开始
```bash
Disk /dev/sda: 100 GiB, 107374182400 bytes, 209715200 sectors
Disk model: Virtual Disk    
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disklabel type: gpt
Disk identifier: 32D2613E-467C-4E91-A9CF-3E6098DF20F1

 

Device       Start      End  Sectors  Size Type
/dev/sda1     2048  1048575  1046528  511M EFI System
/dev/sda2  1050624 67106815 66056192 31.5G Linux filesystem
```
5. 输入d 删除根目录分区 
```bash
Command (m for help): d
Partition number (1,2, default 2): 2

 

Partition 2 has been deleted.
```
6. 输入n 创建新分区
```bash
Command (m for help): n
Partition number (2-128, default 2): 2
First sector (1048576-209715166, default 1048576): 1050624
Last sector, +/-sectors or +/-size{K,M,G,T,P} (1050624-209715166, default 209713151):

 

Created a new partition 2 of type \'Linux filesystem\' and of size 99.5 GiB.
Partition #2 contains a ext4 signature.

 

Do you want to remove the signature? [Y]es/[N]o: n  #特别注意需要n
```
7. 输入w 保存并退出
```bash
Command (m for help): w
The partition table has been altered.
Syncing disks.
```
8. `sudo blkid` 查看新分区的PARTUUID
```bash
mb@arch-vm:~$ sudo blkid
/dev/sda2: UUID=\"93f29fe5-1003-4b3f-b041-3ce2f88ec35e\" BLOCK_SIZE=\"4096\" TYPE=\"ext4\" PARTUUID=\"74d82d6b-0286-493d-befe-9002ebcfa6c8\"
/dev/sda1: UUID=\"96EB-E719\" BLOCK_SIZE=\"512\" TYPE=\"vfat\" PARTLABEL=\"primary\" PARTUUID=\"d5d88d9b-a976-4ac9-888c-c6578248b13c\"
/dev/zram0: LABEL=\"zram0\" UUID=\"74d90911-39b7-49e8-af81-6e2938f74848\" TYPE=\"swap\"
mb@arch-vm:~$ sudo resize2fs /dev/sda2
resize2fs 1.47.0 (5-Feb-2023)
Filesystem at /dev/sda2 is mounted on /; on-line resizing required
old_desc_blocks = 4, new_desc_blocks = 13
The filesystem on /dev/sda2 is now 26082816 (4k) blocks long.
```
9. `sudo resize2fs /dev/sda2` 将磁盘空间从新划分

10. 找到boot目录下的启动配置文件 `cd /boot/loader/entries/`并编辑
11. `sudo nano /boot/loader/entries/2022-07-08_01-33-37_linux.conf`
```bash
 Created by: archinstall
# Created on: 2022-07-08_01-33-37
title Arch Linux (linux)
linux /vmlinuz-linux
initrd /initramfs-linux.img
options root=PARTUUID=32224196-b7fb-4a1c-81b7-6cd6e4527990 zswap.enabled=0 rw intel_pstate=no_hwp rootfstype=ext4
```

12. **将PARTUUID更换成更改记录下的新PARTUUID**
13. `sudo reboot`重启生效','0','1','','post','publish','','0','1','1','1','0','831');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('21','最近心得','21','1697185723','1697185723','<!--markdown-->## 好突然！突然开始写博客了！
**上班划水 不如上班写博客！**

最近的工作已经成功首尾 也顺利转正
期间遇到了很多麻烦问题也都慢慢解决了
现在闲下来也会多听音乐了 感觉很有大二大三时在宿舍的状态（偶尔会突然钻研某技术一整天 偶尔会放空自己一整天去反思 去听音乐

赚到了自己的第三桶金（雾

给自己和锘宝也买了礼物

![IMG_7356.jpeg][1]  你怎么知道我买了iPhone15ProMax???

接下来也会更加努力 

**fight！！！**



  [1]: https://danzaii.cn/usr/uploads/2023/10/1494457932.jpeg','0','1','','post','publish','','0','1','1','1','0','790');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('22','IMG_7356.jpeg','IMG_7356-jpeg','1697185020','1697185020','a:5:{s:4:\"name\";s:13:\"IMG_7356.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2023/10/1494457932.jpeg\";s:4:\"size\";i:500613;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','21','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('23','爱莉希雅生日快乐！','23','1699688960','1699688960','<!--markdown--># 爱门永存～

---

# 因你而在的故事
![1040g00830munu3er561g5nqqvgbg8q4vue9v928.jpeg][1]

![1040g00830munu3er56605nqqvgbg8q4vd3gr3t8.jpeg][2]

![1040g00830munu3er56005nqqvgbg8q4vrb2j9ag.jpeg][3]

![1040g00830munu3er56505nqqvgbg8q4vigti5t8.jpeg][4]

![1040g00830munu3er564g5nqqvgbg8q4v383da4o.jpeg][5]

![1040g00830munu3er563g5nqqvgbg8q4vfksv9eo.jpeg][6]

![1040g00830munu3er565g5nqqvgbg8q4vqdlp0lg.jpeg][7]

![1040g00830munu3er56405nqqvgbg8q4vt1v2nm0.jpeg][8]

![1040g00830munu3er560g5nqqvgbg8q4vti61o48.jpeg][9]


## 买下爱莉希雅的爱 ❤️

![IMG_7673.png][10]


  [1]: https://danzaii.cn/usr/uploads/2023/11/138869797.jpeg
  [2]: https://danzaii.cn/usr/uploads/2023/11/3641150127.jpeg
  [3]: https://danzaii.cn/usr/uploads/2023/11/2153557443.jpeg
  [4]: https://danzaii.cn/usr/uploads/2023/11/3877097914.jpeg
  [5]: https://danzaii.cn/usr/uploads/2023/11/1899630151.jpeg
  [6]: https://danzaii.cn/usr/uploads/2023/11/3335728462.jpeg
  [7]: https://danzaii.cn/usr/uploads/2023/11/1733340484.jpeg
  [8]: https://danzaii.cn/usr/uploads/2023/11/1352683447.jpeg
  [9]: https://danzaii.cn/usr/uploads/2023/11/413869724.jpeg
  [10]: https://danzaii.cn/usr/uploads/2023/11/1366377437.png','0','1','','post','publish','','1','1','1','1','0','984');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('24','IMG_7673.png','IMG_7673-png','1699688183','1699688183','a:5:{s:4:\"name\";s:12:\"IMG_7673.png\";s:4:\"path\";s:35:\"/usr/uploads/2023/11/1366377437.png\";s:4:\"size\";i:1997696;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('25','1040g00830munu3er561g5nqqvgbg8q4vue9v928.jpeg','1040g00830munu3er561g5nqqvgbg8q4vue9v928-jpeg','1699688552','1699688552','a:5:{s:4:\"name\";s:45:\"1040g00830munu3er561g5nqqvgbg8q4vue9v928.jpeg\";s:4:\"path\";s:35:\"/usr/uploads/2023/11/138869797.jpeg\";s:4:\"size\";i:437428;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','2','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('26','1040g00830munu3er56605nqqvgbg8q4vd3gr3t8.jpeg','1040g00830munu3er56605nqqvgbg8q4vd3gr3t8-jpeg','1699688552','1699688552','a:5:{s:4:\"name\";s:45:\"1040g00830munu3er56605nqqvgbg8q4vd3gr3t8.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2023/11/3641150127.jpeg\";s:4:\"size\";i:486061;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','3','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('27','1040g00830munu3er56005nqqvgbg8q4vrb2j9ag.jpeg','1040g00830munu3er56005nqqvgbg8q4vrb2j9ag-jpeg','1699688552','1699688552','a:5:{s:4:\"name\";s:45:\"1040g00830munu3er56005nqqvgbg8q4vrb2j9ag.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2023/11/2153557443.jpeg\";s:4:\"size\";i:416805;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','4','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('28','1040g00830munu3er56505nqqvgbg8q4vigti5t8.jpeg','1040g00830munu3er56505nqqvgbg8q4vigti5t8-jpeg','1699688553','1699688553','a:5:{s:4:\"name\";s:45:\"1040g00830munu3er56505nqqvgbg8q4vigti5t8.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2023/11/3877097914.jpeg\";s:4:\"size\";i:516392;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','5','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('29','1040g00830munu3er564g5nqqvgbg8q4v383da4o.jpeg','1040g00830munu3er564g5nqqvgbg8q4v383da4o-jpeg','1699688553','1699688553','a:5:{s:4:\"name\";s:45:\"1040g00830munu3er564g5nqqvgbg8q4v383da4o.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2023/11/1899630151.jpeg\";s:4:\"size\";i:571943;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','6','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('30','1040g00830munu3er563g5nqqvgbg8q4vfksv9eo.jpeg','1040g00830munu3er563g5nqqvgbg8q4vfksv9eo-jpeg','1699688553','1699688553','a:5:{s:4:\"name\";s:45:\"1040g00830munu3er563g5nqqvgbg8q4vfksv9eo.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2023/11/3335728462.jpeg\";s:4:\"size\";i:1043589;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','7','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('31','1040g00830munu3er565g5nqqvgbg8q4vqdlp0lg.jpeg','1040g00830munu3er565g5nqqvgbg8q4vqdlp0lg-jpeg','1699688553','1699688553','a:5:{s:4:\"name\";s:45:\"1040g00830munu3er565g5nqqvgbg8q4vqdlp0lg.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2023/11/1733340484.jpeg\";s:4:\"size\";i:813096;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','8','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('32','1040g00830munu3er56405nqqvgbg8q4vt1v2nm0.jpeg','1040g00830munu3er56405nqqvgbg8q4vt1v2nm0-jpeg','1699688553','1699688553','a:5:{s:4:\"name\";s:45:\"1040g00830munu3er56405nqqvgbg8q4vt1v2nm0.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2023/11/1352683447.jpeg\";s:4:\"size\";i:449485;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','9','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('33','1040g00830munu3er560g5nqqvgbg8q4vti61o48.jpeg','1040g00830munu3er560g5nqqvgbg8q4vti61o48-jpeg','1699688553','1699688553','a:5:{s:4:\"name\";s:45:\"1040g00830munu3er560g5nqqvgbg8q4vti61o48.jpeg\";s:4:\"path\";s:35:\"/usr/uploads/2023/11/413869724.jpeg\";s:4:\"size\";i:239831;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','10','1','','attachment','publish','','0','1','0','1','23','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('53','友情链接','53','1650104820','1650110709','<!--markdown-->','2','1','links.php','page','publish','','1','1','1','1','0','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('55','73fcc5b104f6a4f1266e78272f28192e82d425d6.jpg','73fcc5b104f6a4f1266e78272f28192e82d425d6-jpg','1650111279','1650111279','a:5:{s:4:\"name\";s:44:\"73fcc5b104f6a4f1266e78272f28192e82d425d6.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/1110147754.jpg\";s:4:\"size\";i:3848658;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','6','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('56','正式开始写博客啦','56','1650111420','1653847469','<!--markdown-->今天开始写博客 但是完全不知道到底要写些什么
打算以后再慢慢考虑 会把自己学到的新技术什么的写一写总结一下

**没有冥冥看的我要死了！！！**

等把最近的作业什么的都搞完我一定要好好整理一下这个博客
同时也要抓紧时间复习！争取一战成硕！
![73fcc5b104f6a4f1266e78272f28192e82d425d6.jpg][1]
  [1]: https://danzaii.cn/usr/uploads/2022/04/1110147754.jpg','0','1','','post','publish','','6','1','1','1','0','587');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('57','keyhole.png','keyhole-png','1650114201','1650114201','a:5:{s:4:\"name\";s:11:\"keyhole.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/3167942020.png\";s:4:\"size\";i:1656228;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','8','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('58','开放了蛋仔云盘！','58','1650114180','1653847428','<!--markdown-->蛋仔云盘已经在友情链接里加入 欢迎大家使用

![keyhole.png][1]


  [1]: https://danzaii.cn/usr/uploads/2022/04/3167942020.png','0','1','','post','publish','','2','1','1','1','0','327');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('59','Screenshot_20220417_001359_com.hypergryph.arknights.bilibili.jpg','Screenshot_20220417_001359_com-hypergryph-arknights-bilibili-jpg','1650125748','1650125748','a:5:{s:4:\"name\";s:64:\"Screenshot_20220417_001359_com.hypergryph.arknights.bilibili.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/1606133851.jpg\";s:4:\"size\";i:1118744;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','10','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('60','当个“人”吧','60','1650125760','1653847371','<!--markdown-->今天晚上登了一下方舟
就有人连发4个一样的 晕了
![Screenshot_20220417_001359_com.hypergryph.arknights.bilibili.jpg][1]


  [1]: https://danzaii.cn/usr/uploads/2022/04/1606133851.jpg','0','1','','post','publish','','0','1','1','1','0','175');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('61','试试看B站视频解析','61','1650131460','1650131541','<!--markdown-->
[bili av=\"\" bv=\"BV1hZ4y1z7UN\"]
','0','1','','post','publish','','0','1','1','1','0','95');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('62','如果能流行起来就好了，战场原荡漾','62','1650131820','1653847344','<!--markdown-->[bili av=\"\" bv=\"BV1t54y1X73P\"]','0','1','','post','publish','','0','1','1','1','0','193');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('63','Bilibili','63','1650132398','1650132398','<!--markdown-->','0','1','bangumi.php','page','hidden','','0','1','1','1','0','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('64','MC手艺养老服搭建','64','1650296220','1653847288','<!--markdown-->## 服务器已经开放！！！ ##
途中遇到了一些小问题 但服务器还是正常开放了！
客户端下载：[蛋仔云盘][1]     [  百度网盘 提取码：vvaa ][2]
服务器IP：danzaii.cn
## 今天看了一个视频有感而发 ##
[bili av=\"\" bv=\"BV1fT4y1e7xH\"]
打算搭建一个手艺养老服 用和视频里相同的模组
主要模组:
方块小镇Yuushya-Beta-0.10.2-forge
载具vehicle-mod-0.45.2-1.16.3
这里是方块小镇的官网：[方块小镇的官网][3]


## 服务器部分 ##
服务器使用了腾讯云的轻量应用服务器 4C8G
服务端使用了[Loliserver][4]作为服务端核心

由于有过多次的开服经验 服务器配置方面进行的都很顺利
但不知道为何总是报错 服务器没有办法启动 后来发现是java版本过高的问题（怎么java不能向下兼容啊！！！）
而且在寻找适合的java版本的过程中 我学到了一个非常重要的知识 那就是 java全版本下载地址藏得真深啊！
[java全版本下载][5]![oracle官网][6]
为了找一个311版本的java8 真的找破头了
搜索引擎给的全是csdn上面的动不动就问你要钱要积分的
我现在对于csdn真的一言难尽了
本来就没啥人 现在搞得这个又收费 积分还难获取 直接把自己搞臭
![全是这样的][7]
但是还是有乐于分享的老哥的[冰舞云霄][8]
![O_N1O)YOTNB_G~A%5SY8504.png][9]
这里非常感谢他
我会的技术也绝对不会藏着掖着的！


  [1]: http://danzaii.cn:5212/#/s/rEH0
  [2]: https://pan.baidu.com/s/1tnpmFlemkpVEy7bN09OfNQ
  [3]: https://yuushyatownscape.gitee.io/page/index.html
  [4]: https://www.mcbbs.net/thread-1193989-1-1.html
  [5]: https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html
  [6]: https://danzaii.cn/usr/uploads/2022/04/1999712259.png
  [7]: https://danzaii.cn/usr/uploads/2022/04/1330416262.png
  [8]: https://blog.csdn.net/bingwuyunxiao1/article/details/123775133
  [9]: https://danzaii.cn/usr/uploads/2022/04/123000445.png','0','1','','post','publish','','0','1','1','1','0','313');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('65','T~C(EZ%A44)WU$~LO]P8KCX.png','T-C-EZ-A44-WU-LO-P8KCX-png','1650475892','1650475892','a:5:{s:4:\"name\";s:27:\"T~C(EZ%A44)WU$~LO]P8KCX.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/1999712259.png\";s:4:\"size\";i:175470;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','14','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('66','Q7$8C54XE$26F[G0CFM{G]4.png','Q7-8C54XE-26F-G0CFM-G-4-png','1650476164','1650476164','a:5:{s:4:\"name\";s:27:\"Q7$8C54XE$26F[G0CFM{G]4.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/1330416262.png\";s:4:\"size\";i:44146;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','2','1','','attachment','publish','','0','1','0','1','14','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('67','O_N1O)YOTNB_G~A%5SY8504.png','O_N1O-YOTNB_G-A-5SY8504-png','1650476392','1650476392','a:5:{s:4:\"name\";s:27:\"O_N1O)YOTNB_G~A%5SY8504.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/04/123000445.png\";s:4:\"size\";i:61628;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','3','1','','attachment','publish','','0','1','0','1','14','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('68','f1faa7ced6f435f145725aeb32bdaca7a898cabb.jpg','f1faa7ced6f435f145725aeb32bdaca7a898cabb-jpg','1650522240','1650522240','a:5:{s:4:\"name\";s:44:\"f1faa7ced6f435f145725aeb32bdaca7a898cabb.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/3575117968.jpg\";s:4:\"size\";i:896116;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','19','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('69','冥冥复播啦！开心','69','1650522300','1653847269','<!--markdown-->![f1faa7ced6f435f145725aeb32bdaca7a898cabb.jpg][1]
又可以看冥冥了捏 哎嘿嘿
[冥冥复播动态][2]


  [1]: https://danzaii.cn/usr/uploads/2022/04/3575117968.jpg
  [2]: https://t.bilibili.com/650695856128786456','0','1','','post','publish','','2','1','1','1','0','346');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('70','laopo.png','laopo-png','1650650290','1650650290','a:5:{s:4:\"name\";s:9:\"laopo.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/1389957162.png\";s:4:\"size\";i:7526;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','24','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('71','woshibendan.png','woshibendan-png','1650650302','1650650302','a:5:{s:4:\"name\";s:15:\"woshibendan.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/1577127066.png\";s:4:\"size\";i:9630;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','2','1','','attachment','publish','','0','1','0','1','24','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('72','haoxihuan.png','haoxihuan-png','1650650309','1650650309','a:5:{s:4:\"name\";s:13:\"haoxihuan.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/1557419878.png\";s:4:\"size\";i:8028;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','3','1','','attachment','publish','','0','1','0','1','24','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('73','haoye.png','haoye-png','1650650338','1650650338','a:5:{s:4:\"name\";s:9:\"haoye.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/04/2012492194.png\";s:4:\"size\";i:10226;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','4','1','','attachment','publish','','0','1','0','1','24','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('74','加入了冥冥表情包','74','1650650340','1653847249','<!--markdown-->[Meting]
[Music server=\"netease\" id=\"4920727\" type=\"song\"/]
[/Meting]

**快来试试吧**
![laopo.png][1]
![woshibendan.png][2]
![haoxihuan.png][3]
![haoye.png][4]


  [1]: https://danzaii.cn/usr/uploads/2022/04/1389957162.png
  [2]: https://danzaii.cn/usr/uploads/2022/04/1577127066.png
  [3]: https://danzaii.cn/usr/uploads/2022/04/1557419878.png
  [4]: https://danzaii.cn/usr/uploads/2022/04/2012492194.png','0','1','','post','publish','','3','1','1','1','0','482');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('75','风暴中，唯保守者屹立不倒。','75','1651079040','1653847229','<!--markdown-->**要强大自身，才有力量去保护自己珍视的东西**

谨记屈辱，谨记伤痛，谨记自己曾失去的所有。

人群中低调行事，“战场”上锋芒侧漏。','0','1','','post','publish','','0','1','1','1','0','257');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('76','日常发病','76','1651518660','1658667172','<!--markdown-->冥冥啊，我的冥冥，今天物理光学开始讲光的特性了，物理老师说光是频率极高的电磁波；又说光是粒子，因为有粒子特性，光到底是什么？
原来
光是想你就用尽了全力u200b


我挣扎着起身，但一个踉跄又摔倒在床边，脑袋又嗡嗡的，视线又逐渐黑暗，我知道，我又要晕倒了。
算上这次，这已经是今天第5次晕倒了。在晕倒之前，我看了看床边放着的照片，啊，原来是冥冥让我冲昏了头脑。


请问冥冥是意大利和中国混血吗？
不然怎么长得这么像我的
意❤️中❤️人


如果我高一，
我会写七言情诗，引经据典行行不提喜欢；
如果我高二，
我会写千字散文，辞藻华丽句句点名爱意；
如果我高三，
我会写u200b一纸情u200b书，哲思神秘再融进荣格和弗洛伊德；
可惜我现在幼儿园，
我只会说，冥冥我好喜欢你，就像喜欢大白兔奶糖一样喜欢你。u200b','0','1','','page','publish','','0','1','1','1','0','758');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('77','原神私服搭建教程（Linux端）','77','1652187360','1654617025','<!--markdown-->前几天突然被同学安利了原神私服
看了一下 打算自己也开开看
首先下载jdk17

    wget https://download.oracle.com/java/17/archive/jdk-17.0.2_linux-x64_bin.rpm

安装jdk17

    rpm -ivh jdk-17.0.2_linux-x64_bin.rpm

然后安装宝塔面板 这个应该都很明白的 但也贴一下代码吧

    yum install -y wget && wget -O install.sh
    http://download.bt.cn/install/install_6.0.sh&&sh install.sh

从宝塔面板安装MongoDB
![%F6C@O6{9QTZDH@WFP2VK9F.png][1]
项目仓库[Github:Grasscutter][2]
把项目克隆到本地然后构建项目

    git clone https://github.com/Grasscutters/Grasscutter.git
    cd Grasscutter
    chmod +x gradlew
    ./gradlew jar # Compile

在项目根目录中找到grasscutter.jar
cd到grasscutter.jar所在目录中然后输入

    java -jar grasscutter.jar

构建完成后会多出一个resource文件夹
需要再去这里[Resource][3]clone下来resource文件夹并将里面的东西复制进resource内
![ysjc.png][4]
之后再输入

    java -jar grasscutter.jar

![yssf1.png][5]
出现以上即为成功
我的服务器因为博客占用了443端口 所以修改了一下端口变成了8001
打开根目录下的config.json进行编辑
![_Z[6OP_`3M2C9_E3PW{CZFP.png][6]
![14.png][7]


----------
**新版config修改**
![ysjc1.png][8]
![ysjc2.png][9]
![ysjc3.png][10]
其中的用户默认权限可以在项目wiki中找到相关指令[项目github wiki链接][11]
其余选项可以参考项目文档 这里不细说了
----------
将根目录下的keystore.p12复制到/etc/pki/ca-trust/source/anchors路劲下
一定要留一份在根目录里！！！
然后重载一下

    update-ca-trust

最后再启动一下服务器就大功告成了
**记得在安全组放开22102你刚刚设置的端口哦**
如果构建失败的话（下面的办法已经失效 建议重新构建）
这里有别人已经构建好的压缩包[已构建的压缩包][12]
但是使用方法有些不同 
grasscutter.jar等文件都在lib文件夹里面 需要自己把外面的resources文件夹里的东西复制进去
然后你就把lib当成根目录就行了 修改config也只需要修改lib里面的config.json 
**记得复制一份keystore.p12进lib！！！！**


----------
[原神私服QA][13]


  [1]: https://danzaii.cn/usr/uploads/2022/05/1132462728.png
  [2]: https://github.com/Grasscutters/Grasscutter
  [3]: https://github.com/Koko-boya/Grasscutter_Resources
  [4]: https://danzaii.cn/usr/uploads/2022/06/401020847.png
  [5]: https://danzaii.cn/usr/uploads/2022/05/295603548.png
  [6]: https://danzaii.cn/usr/uploads/2022/05/2098483061.png
  [7]: https://danzaii.cn/usr/uploads/2022/05/3991321551.png
  [8]: https://danzaii.cn/usr/uploads/2022/06/4128362972.png
  [9]: https://danzaii.cn/usr/uploads/2022/06/929416003.png
  [10]: https://danzaii.cn/usr/uploads/2022/06/4032489164.png
  [11]: https://github.com/Grasscutters/Grasscutter/wiki/Commands
  [12]: http://danzaii.cn:5212/#/s/vmIj
  [13]: https://danzaii.cn/index.php/archives/77/','0','1','','post','publish','','3','1','1','1','0','908');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('78','%F6C@O6{9QTZDH@WFP2VK9F.png','F6C-O6-9QTZDH-WFP2VK9F-png','1652267998','1652267998','a:5:{s:4:\"name\";s:27:\"%F6C@O6{9QTZDH@WFP2VK9F.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/1132462728.png\";s:4:\"size\";i:139145;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','27','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('79','yssf1.png','IP-6-N-RG-V5ND1HQSO_VK-png','1652268327','1654528114','a:8:{s:4:\"name\";s:27:\"]IP)6@N]RG)V5ND1HQSO_VK.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/05/295603548.png\";s:4:\"size\";i:27450;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";s:7:\"isImage\";b:1;s:3:\"url\";s:56:\"https://danzaii.cn/usr/uploads/2022/05/295603548.png\";s:11:\"description\";s:0:\"\";}','2','1','','attachment','publish','','0','1','0','1','27','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('80','_Z[6OP_`3M2C9_E3PW{CZFP.png','Z-6OP_-3M2C9_E3PW-CZFP-png','1652268568','1652268568','a:5:{s:4:\"name\";s:27:\"_Z[6OP_`3M2C9_E3PW{CZFP.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/2098483061.png\";s:4:\"size\";i:75522;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','3','1','','attachment','publish','','0','1','0','1','27','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('83','14.png','14-png','1652269135','1652269135','a:5:{s:4:\"name\";s:6:\"14.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/3991321551.png\";s:4:\"size\";i:31119;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','4','1','','attachment','publish','','0','1','0','1','27','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('84','原神私服的PC端连接教程','84','1652270160','1654946482','<!--markdown-->## [不干啦][1] ##
## [不干啦][1] ##
## [不干啦][1] ##
## [不干啦][1] ##
## [不干啦][1] ##
## [不干啦][1] ##
## [不干啦][1] ##
## 连接教程 ##
来了来了 这次先出PC端的连接教程（才不是不会安卓端呢）
其实是手机端的原神我已经卸载了 没法做测试 网络上应该有很多其他人的教程 大同小异罢了
果然 还是整个群吧 方便管理和问答[点击链接加入群聊【小羊羔的窝】][2]
**QQ群号：915482010**
首先！ 下载这个！ [代理端][3]
如果遇到打开闪退问题的可以通过百度云盘下载
链接：https://pan.baidu.com/s/1qjb7jFKyU5pKlznnxdiYJQ?pwd=i77n 
提取码：i77n 
解压之后启动这个
![%NB95IU4[FSC`8RBP(NW%2H.png][4]
启动成功应该是这样样子的
![dld.png][5]
然后要设置网络代理
![PXFYS9MJS[N{WPHARU28DQ0.png][6]

![{R6CCBO%AYUJP4%R6Q)HWI5.png][7]

![ds.png][8]

设置完代理之后刚刚的红色cmd界面应该会一直跳很多东西
然后打开原神！
**boom！**
就好了
记得玩完之后把代理关掉 在代理期间是几乎连不上网的
啊 对了 记得提前联系我让我给你创建账号 不然没账号怎么玩
下面留评论也行 需要留下你想要的账号 还有UID 没了 密码输什么都能进


----------
2.7版本更新
现在已经不需要找我要账号了
自己输入喜欢的账号（一定要记住）
密码随便输就可以了

----------


**指令相关内容**
[物品代码][9]
[指令][10]


----------
[原神私服的QA][11]


  [1]: https://danzaii.cn/index.php/archives/101/
  [2]: https://jq.qq.com/?_wv=1027&k=dg0R4sXc
  [3]: http://danzaii.cn:5212/#/s/wRSz
  [4]: https://danzaii.cn/usr/uploads/2022/05/1444052776.png
  [5]: https://danzaii.cn/usr/uploads/2022/06/3573904587.png
  [6]: https://danzaii.cn/usr/uploads/2022/05/1848633869.png
  [7]: https://danzaii.cn/usr/uploads/2022/05/1799927927.png
  [8]: https://danzaii.cn/usr/uploads/2022/05/3241378348.png
  [9]: http://danzaii.cn:5212/#/s/DxiK
  [10]: http://danzaii.cn:5212/#/s/AOf3
  [11]: https://danzaii.cn/index.php/archives/77/','0','1','','post','publish','','64','1','1','1','0','8225');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('85','%NB95IU4[FSC`8RBP(NW%2H.png','NB95IU4-FSC-8RBP-NW-2H-png','1652271616','1652271616','a:5:{s:4:\"name\";s:27:\"%NB95IU4[FSC`8RBP(NW%2H.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/1444052776.png\";s:4:\"size\";i:16695;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','34','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('86','PXFYS9MJS[N{WPHARU28DQ0.png','PXFYS9MJS-N-WPHARU28DQ0-png','1652271706','1652271706','a:5:{s:4:\"name\";s:27:\"PXFYS9MJS[N{WPHARU28DQ0.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/1848633869.png\";s:4:\"size\";i:70158;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','2','1','','attachment','publish','','0','1','0','1','34','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('87','{R6CCBO%AYUJP4%R6Q)HWI5.png','R6CCBO-AYUJP4-R6Q-HWI5-png','1652271732','1652271732','a:5:{s:4:\"name\";s:27:\"{R6CCBO%AYUJP4%R6Q)HWI5.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/1799927927.png\";s:4:\"size\";i:34047;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','3','1','','attachment','publish','','0','1','0','1','34','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('88','8R3H[)3{8TQI4]16P@HS%6I.png','8R3H-3-8TQI4-16P-HS-6I-png','1652271824','1652271824','a:5:{s:4:\"name\";s:27:\"8R3H[)3{8TQI4]16P@HS%6I.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/05/175652113.png\";s:4:\"size\";i:31491;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','4','1','','attachment','publish','','0','1','0','1','34','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('89','ds.png','ds-png','1652271913','1652271913','a:5:{s:4:\"name\";s:6:\"ds.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/3241378348.png\";s:4:\"size\";i:31491;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','5','1','','attachment','publish','','0','1','0','1','34','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('90','好多报告没写完 人麻了','90','1653753840','1653847132','<!--markdown-->.NET的大报告明天就要交了 一个字没动呢还 要寄了吗
我直接熬夜肝一个物业管理系统！！！！
用到了ASP.NET+MVC+EF
','0','1','','post','publish','','2','1','1','1','0','276');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('91','P1Y7WQ~6CNW)Y0BRHBKJCGB.png','P1Y7WQ-6CNW-Y0BRHBKJCGB-png','1653846899','1653846899','a:5:{s:4:\"name\";s:27:\"P1Y7WQ~6CNW)Y0BRHBKJCGB.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/1511265978.png\";s:4:\"size\";i:1396052;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','42','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('92','あなたが好きです。付き合ってください','92','1653847020','1654529300','<!--markdown-->![P1Y7WQ~6CNW)Y0BRHBKJCGB.png][1]


  [1]: https://danzaii.cn/usr/uploads/2022/05/1511265978.png','0','1','','post','publish','','1','1','1','1','0','289');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('93','錆の夜城.png','錆の夜城-png','1653847123','1653847123','a:5:{s:4:\"name\";s:16:\"錆の夜城.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/1206582564.png\";s:4:\"size\";i:2254376;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','40','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('94','keyhole.png','keyhole-png-1','1653847160','1653847160','a:5:{s:4:\"name\";s:11:\"keyhole.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/05/280460648.png\";s:4:\"size\";i:1656228;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','6','1','','attachment','publish','','0','1','0','1','34','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('95','illust_59819362_20180711_230600.png','illust_59819362_20180711_230600-png','1653847197','1653847197','a:5:{s:4:\"name\";s:35:\"illust_59819362_20180711_230600.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/1557095697.png\";s:4:\"size\";i:2445172;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','5','1','','attachment','publish','','0','1','0','1','27','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('96','illust_60588920_20180625_002539.png','illust_60588920_20180625_002539-png','1653847225','1653847225','a:5:{s:4:\"name\";s:35:\"illust_60588920_20180625_002539.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/1409815518.png\";s:4:\"size\";i:2515421;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','25','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('97','天使冥冥ED图.jpg','天使冥冥ED图-jpg','1653847246','1653847246','a:5:{s:4:\"name\";s:21:\"天使冥冥ED图.jpg\";s:4:\"path\";s:34:\"/usr/uploads/2022/05/945187543.jpg\";s:4:\"size\";i:1131055;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','5','1','','attachment','publish','','0','1','0','1','24','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('98','illust_64959519_20180603_001500.png','illust_64959519_20180603_001500-png','1653847266','1653847266','a:5:{s:4:\"name\";s:35:\"illust_64959519_20180603_001500.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/05/786606211.png\";s:4:\"size\";i:3569697;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','2','1','','attachment','publish','','0','1','0','1','19','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('99','illust_66747292_20180421_200046.png','illust_66747292_20180421_200046-png','1653847286','1653847286','a:5:{s:4:\"name\";s:35:\"illust_66747292_20180421_200046.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/3262473188.png\";s:4:\"size\";i:1458295;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','4','1','','attachment','publish','','0','1','0','1','14','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('100','illust_66151248_20180618_125501.jpg','illust_66151248_20180618_125501-jpg','1653847342','1653847342','a:5:{s:4:\"name\";s:35:\"illust_66151248_20180618_125501.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/1648936901.jpg\";s:4:\"size\";i:1362540;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','12','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('101','illust_67548333_20180710_170532.jpg','illust_67548333_20180710_170532-jpg','1653847369','1653847369','a:5:{s:4:\"name\";s:35:\"illust_67548333_20180710_170532.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/4170054296.jpg\";s:4:\"size\";i:5320280;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','2','1','','attachment','publish','','0','1','0','1','10','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('102','illust_39578544_20170708_124102.jpg','illust_39578544_20170708_124102-jpg','1653847425','1653847425','a:5:{s:4:\"name\";s:35:\"illust_39578544_20170708_124102.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/3904168380.jpg\";s:4:\"size\";i:276793;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','2','1','','attachment','publish','','0','1','0','1','8','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('103','illust_63890894_20170718_200909.jpg','illust_63890894_20170718_200909-jpg','1653847466','1653847466','a:5:{s:4:\"name\";s:35:\"illust_63890894_20170718_200909.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/05/2734289627.jpg\";s:4:\"size\";i:2626111;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','2','1','','attachment','publish','','0','1','0','1','6','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('104','F2D639806C8363D197939591169F6163.jpg','F2D639806C8363D197939591169F6163-jpg','1654015827','1654015827','a:5:{s:4:\"name\";s:36:\"F2D639806C8363D197939591169F6163.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/2928251017.jpg\";s:4:\"size\";i:150948;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','59','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('105','Screenshot_20220601_005153_tv.danmaku.bili.jpg','Screenshot_20220601_005153_tv-danmaku-bili-jpg','1654016061','1654016061','a:5:{s:4:\"name\";s:46:\"Screenshot_20220601_005153_tv.danmaku.bili.jpg\";s:4:\"path\";s:34:\"/usr/uploads/2022/06/990168987.jpg\";s:4:\"size\";i:388146;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','2','1','','attachment','publish','','0','1','0','1','59','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('106','Screenshot_20220601_005201_tv.danmaku.bili.jpg','Screenshot_20220601_005201_tv-danmaku-bili-jpg','1654016067','1654016067','a:5:{s:4:\"name\";s:46:\"Screenshot_20220601_005201_tv.danmaku.bili.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/3876259258.jpg\";s:4:\"size\";i:420662;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','3','1','','attachment','publish','','0','1','0','1','59','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('107','Screenshot_20220601_005207_tv.danmaku.bili.jpg','Screenshot_20220601_005207_tv-danmaku-bili-jpg','1654016072','1654016072','a:5:{s:4:\"name\";s:46:\"Screenshot_20220601_005207_tv.danmaku.bili.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1957189687.jpg\";s:4:\"size\";i:438555;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','4','1','','attachment','publish','','0','1','0','1','59','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('108','8P37HDD67EDKBFQ0V%7DI$G.png','8P37HDD67EDKBFQ0V-7DI-G-png','1654016284','1654016284','a:5:{s:4:\"name\";s:27:\"8P37HDD67EDKBFQ0V%7DI$G.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/2534142372.png\";s:4:\"size\";i:447308;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','5','1','','attachment','publish','','0','1','0','1','59','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('109','六一快乐！','109','1654016288','1654016288','<!--markdown-->**给自己买个小礼物**
**剁手了QAQ**
![F2D639806C8363D197939591169F6163.jpg][1]

![Screenshot_20220601_005153_tv.danmaku.bili.jpg][2]

![Screenshot_20220601_005201_tv.danmaku.bili.jpg][3]

![Screenshot_20220601_005207_tv.danmaku.bili.jpg][4]
涩涩！涩涩！ 完全可以涩涩 ！！！
六一儿童节买这么涩涩的手办真的没问题吗
我直接给弟弟买一个！！！

  [1]: https://danzaii.cn/usr/uploads/2022/06/2928251017.jpg
  [2]: https://danzaii.cn/usr/uploads/2022/06/990168987.jpg
  [3]: https://danzaii.cn/usr/uploads/2022/06/3876259258.jpg
  [4]: https://danzaii.cn/usr/uploads/2022/06/1957189687.jpg','0','1','','post','publish','','1','1','1','1','0','219');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('112','9J~JR$XF7]~5$U4F$DI%3MD.png','9J-JR-XF7-5-U4F-DI-3MD-png','1654367225','1654367225','a:5:{s:4:\"name\";s:27:\"9J~JR$XF7]~5$U4F$DI%3MD.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1170009660.png\";s:4:\"size\";i:1270745;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','63','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('113','甜度爆表了','113','1654367220','1654367673','<!--markdown-->**二十多岁的人 还没几个高中生会爱**
--------------------

![sstx1.png][1]

![sstx3.png][2]

![sstx4.png][3]

![sstx5.png][4]

![sstx2.png][5]


  [1]: https://danzaii.cn/usr/uploads/2022/06/1850634395.png
  [2]: https://danzaii.cn/usr/uploads/2022/06/1905534149.png
  [3]: https://danzaii.cn/usr/uploads/2022/06/2059842967.png
  [4]: https://danzaii.cn/usr/uploads/2022/06/1874700398.png
  [5]: https://danzaii.cn/usr/uploads/2022/06/399545930.png','0','1','','post','publish','','1','1','1','1','0','190');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('116','sstx1.png','sstx1-png','1654367507','1654367507','a:5:{s:4:\"name\";s:9:\"sstx1.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1850634395.png\";s:4:\"size\";i:1023563;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','2','1','','attachment','publish','','0','1','0','1','63','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('117','sstx2.png','sstx2-png','1654367514','1654367514','a:5:{s:4:\"name\";s:9:\"sstx2.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/06/399545930.png\";s:4:\"size\";i:1445912;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','3','1','','attachment','publish','','0','1','0','1','63','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('118','sstx3.png','sstx3-png','1654367656','1654367656','a:5:{s:4:\"name\";s:9:\"sstx3.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1905534149.png\";s:4:\"size\";i:994693;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','4','1','','attachment','publish','','0','1','0','1','63','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('119','sstx4.png','sstx4-png','1654367664','1654367664','a:5:{s:4:\"name\";s:9:\"sstx4.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/2059842967.png\";s:4:\"size\";i:1079725;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','5','1','','attachment','publish','','0','1','0','1','63','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('120','sstx5.png','sstx5-png','1654367670','1654367670','a:5:{s:4:\"name\";s:9:\"sstx5.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1874700398.png\";s:4:\"size\";i:1026771;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','6','1','','attachment','publish','','0','1','0','1','63','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('121','793187920.jpg','793187920-jpg','1654526719','1654526719','a:5:{s:4:\"name\";s:13:\"793187920.jpg\";s:4:\"path\";s:34:\"/usr/uploads/2022/06/530399821.jpg\";s:4:\"size\";i:768757;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','74','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('122','式守同学1.png','式守同学1-png','1654526864','1654526864','a:5:{s:4:\"name\";s:17:\"式守同学1.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/3111636107.png\";s:4:\"size\";i:424442;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','2','1','','attachment','publish','','0','1','0','1','74','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('123','式守同学2.png','式守同学2-png','1654526908','1654526908','a:5:{s:4:\"name\";s:17:\"式守同学2.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1468112828.png\";s:4:\"size\";i:441856;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','3','1','','attachment','publish','','0','1','0','1','74','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('124','报告周正式结束！','124','1654526880','1654526984','<!--markdown-->**终于写完报告了！**

左撇子 好酷！
![式守同学1.png][1]

式守同学 可爱滴捏

![可爱.jpg][2]

![式守同学2.png][3]


  [1]: https://danzaii.cn/usr/uploads/2022/06/3111636107.png
  [2]: https://danzaii.cn/usr/uploads/2022/06/2982774836.jpg
  [3]: https://danzaii.cn/usr/uploads/2022/06/1468112828.png','0','1','','post','publish','','0','1','1','1','0','143');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('125','可爱.jpg','可爱-jpg','1654526980','1654526980','a:5:{s:4:\"name\";s:10:\"可爱.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/2982774836.jpg\";s:4:\"size\";i:28879;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','4','1','','attachment','publish','','0','1','0','1','74','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('126','ys1.png','ys1-png','1654527271','1654527271','a:5:{s:4:\"name\";s:7:\"ys1.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/2285649592.png\";s:4:\"size\";i:889706;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','77','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('127','有关原神私服（服务器已更新！）','127','1654527780','1654936928','<!--markdown-->## 原神私服问题集中汇总 ##

最近有好几个人都在之前开的原神帖子留评论
那么就在这里集中回答一下大家遇到的问题吧
（会不定期更新的）
QQ群：[点击链接加入群聊【小羊羔的窝】][1]
**QQ群号：915482010**
服务器进入教程[连接服务器教程][2]
----------
## Q&A ##
 1. 有关求账号的问题
  这次原神更新到了2.7版本后因为服务端更新和又重新配置了一下，已经不需要再特别找我要账号了，如果实在想要特别的UID的话也不是不能留言给我 只是可能要等一段时间 可能不能及时处理
 2. 服务器性质声明
  本服务器主要还是自己和自己的朋友们在玩，有随时关闭的可能。毕竟服务器资源宝贵，有时要开其他服务来完成我自己的需求。所以登陆不上也不要着急，有问题留言，一定会耐心回复的。
 3. 安全性问题
  私服不能说100%安全，但应该是没有问题的，总不可能因为你自己开了一个代理服务就把你号ban了吧。况且大家根本没有登陆自己的米哈游账号。只能说，有风险，但是很小很小，如果愿意承担风险再进行游玩吧。
 4. 服务器教程
  现在新的服务器教程还没有做，2.7版本相较2.6版本文件结构没有太大变化，但config文件变化较大，有空会继续更新教程的。


  [1]: https://jq.qq.com/?_wv=1027&k=dg0R4sXc
  [2]: https://danzaii.cn/index.php/archives/34/','0','1','','post','publish','','23','1','1','1','0','4240');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('128','ysjc.png','ysjc-png','1654528645','1654528645','a:5:{s:4:\"name\";s:8:\"ysjc.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/06/401020847.png\";s:4:\"size\";i:13258;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','6','1','','attachment','publish','','0','1','0','1','27','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('129','ysjc1.png','ysjc1-png','1654528984','1654528984','a:5:{s:4:\"name\";s:9:\"ysjc1.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/4128362972.png\";s:4:\"size\";i:84717;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','7','1','','attachment','publish','','0','1','0','1','27','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('130','ysjc2.png','ysjc2-png','1654528989','1654528989','a:5:{s:4:\"name\";s:9:\"ysjc2.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/06/929416003.png\";s:4:\"size\";i:41492;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','8','1','','attachment','publish','','0','1','0','1','27','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('131','ysjc3.png','ysjc3-png','1654528993','1654528993','a:5:{s:4:\"name\";s:9:\"ysjc3.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/4032489164.png\";s:4:\"size\";i:38321;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','9','1','','attachment','publish','','0','1','0','1','27','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('132','dd.jpg','dd-jpg','1654676173','1654676173','a:5:{s:4:\"name\";s:6:\"dd.jpg\";s:4:\"path\";s:34:\"/usr/uploads/2022/06/892991669.jpg\";s:4:\"size\";i:473347;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','84','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('133','gaokaojiayou.jpg','gaokaojiayou-jpg','1654676352','1654676352','a:5:{s:4:\"name\";s:16:\"gaokaojiayou.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/4275955706.jpg\";s:4:\"size\";i:212469;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','2','1','','attachment','publish','','0','1','0','1','84','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('134','三年前的这个时候 我已经在偷笑了','134','1654676417','1654676417','<!--markdown-->三年前的这时候应该在考英语吧
当时考到一半卷子都快写完了 嘴角已经不自觉的开始上扬了
哈哈哈哈哈 想起来就好好笑
英语 太简单了吧

会不会这时候还有人跟我一样已经开始偷笑了呢

----------

祝愿考生们金榜题名
![gaokaojiayou.jpg][1]


  [1]: https://danzaii.cn/usr/uploads/2022/06/4275955706.jpg','0','1','','post','publish','','0','1','1','1','0','155');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('135','dld.png','dld-png','1654749704','1654749704','a:5:{s:4:\"name\";s:7:\"dld.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/3573904587.png\";s:4:\"size\";i:22615;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','7','1','','attachment','publish','','0','1','0','1','34','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('136','ys1.png','ys1-png-1','1654771425','1654771425','a:5:{s:4:\"name\";s:7:\"ys1.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1583160757.png\";s:4:\"size\";i:2579139;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','94','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('137','ys2.png','ys2-png','1654771429','1654771429','a:5:{s:4:\"name\";s:7:\"ys2.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/2645643212.png\";s:4:\"size\";i:853485;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','2','1','','attachment','publish','','0','1','0','1','94','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('138','ys3.png','ys3-png','1654771442','1654771442','a:5:{s:4:\"name\";s:7:\"ys3.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/3335691010.png\";s:4:\"size\";i:3180547;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','3','1','','attachment','publish','','0','1','0','1','94','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('139','ys4.png','ys4-png','1654771450','1654771450','a:5:{s:4:\"name\";s:7:\"ys4.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/3167622184.png\";s:4:\"size\";i:3008415;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','4','1','','attachment','publish','','0','1','0','1','94','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('140','ys7.png','ys7-png','1654771457','1654771457','a:5:{s:4:\"name\";s:7:\"ys7.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/3400179226.png\";s:4:\"size\";i:2867209;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','5','1','','attachment','publish','','0','1','0','1','94','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('141','ys5.png','ys5-png','1654771466','1654771466','a:5:{s:4:\"name\";s:7:\"ys5.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/06/347855999.png\";s:4:\"size\";i:2977958;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','6','1','','attachment','publish','','0','1','0','1','94','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('142','ys6.png','ys6-png','1654771471','1654771471','a:5:{s:4:\"name\";s:7:\"ys6.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1843723268.png\";s:4:\"size\";i:821749;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','7','1','','attachment','publish','','0','1','0','1','94','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('143','20.png','20-png','1654771545','1654771545','a:5:{s:4:\"name\";s:6:\"20.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1480443541.png\";s:4:\"size\";i:3652790;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','8','1','','attachment','publish','','0','1','0','1','94','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('144','原神 太好玩啦！','144','1654771500','1654771555','<!--markdown-->![ys1.png][1]
![ys2.png][2]
![ys3.png][3]
![ys4.png][4]
![ys7.png][5]
![ys5.png][6]
![ys6.png][7]

我发现我之前还是太保守了

  [1]: https://danzaii.cn/usr/uploads/2022/06/1583160757.png
  [2]: https://danzaii.cn/usr/uploads/2022/06/2645643212.png
  [3]: https://danzaii.cn/usr/uploads/2022/06/3335691010.png
  [4]: https://danzaii.cn/usr/uploads/2022/06/3167622184.png
  [5]: https://danzaii.cn/usr/uploads/2022/06/3400179226.png
  [6]: https://danzaii.cn/usr/uploads/2022/06/347855999.png
  [7]: https://danzaii.cn/usr/uploads/2022/06/1843723268.png','0','1','','post','publish','','0','1','1','1','0','227');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('145','100ji.jpg','100ji-jpg','1654771719','1654771719','a:5:{s:4:\"name\";s:9:\"100ji.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/4122072036.jpg\";s:4:\"size\";i:276105;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','97','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('146','33.png','33-png','1654771738','1654771738','a:5:{s:4:\"name\";s:6:\"33.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/3736153316.png\";s:4:\"size\";i:6020057;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','2','1','','attachment','publish','','0','1','0','1','97','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('147','方舟100级纪念','147','1654771744','1654771744','<!--markdown-->## 再不赶快玩100级限定眼镜就没机会了！！！ ##
![100ji.jpg][1]


  [1]: https://danzaii.cn/usr/uploads/2022/06/4122072036.jpg','0','1','','post','publish','','0','1','1','1','0','159');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('148','沉迷MC了 要去开MC服务器了 原神再见','148','1654928820','1654929781','<!--markdown-->[bili av=\"\" bv=\"BV1fT4y1e7xH\"]
MC真好玩
就是服务器资源占用有点多
## 服务器指路 ##
[服务器][1]


  [1]: https://danzaii.cn/index.php/archives/14/','0','1','','post','publish','','0','1','1','1','0','193');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('149','73718366.jpg','73718366-jpg','1654928846','1654928846','a:5:{s:4:\"name\";s:12:\"73718366.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/2640518923.jpg\";s:4:\"size\";i:3295879;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','98','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('150','大翅膀海边 (2).jpg','大翅膀海边-2-jpg','1654946360','1654946360','a:5:{s:4:\"name\";s:23:\"大翅膀海边 (2).jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1399371628.jpg\";s:4:\"size\";i:1733082;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','101','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('151','原神服务器不开了 大家可以自行去开设私服','151','1654946363','1654946363','<!--markdown-->最近几天原神私服给我的博客引了波大的流量
但是因为太多人了 已经完全超出我能控制的范畴了
而且服务器资源也吃不消 选择关服了
如果有人有需要想自己开服但是遇到困难的 我可以提供一定帮助
这里是服务器项目地址[项目github wiki链接][1]（在文章里也有教程[我的教程][2]）
有缘再会


  [1]: https://github.com/Grasscutters/Grasscutter/
  [2]: https://danzaii.cn/index.php/archives/27/','0','1','','post','publish','','1','1','1','1','0','826');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('152','26.png','26-png','1655652832','1655652832','a:5:{s:4:\"name\";s:6:\"26.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/1030251067.png\";s:4:\"size\";i:5753941;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','105','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('154','转圈圈.gif','转圈圈-gif','1655652883','1655652883','a:5:{s:4:\"name\";s:13:\"转圈圈.gif\";s:4:\"path\";s:34:\"/usr/uploads/2022/06/612313418.gif\";s:4:\"size\";i:67550;s:4:\"type\";s:3:\"gif\";s:4:\"mime\";s:9:\"image/gif\";}','2','1','','attachment','publish','','0','1','0','1','105','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('155','小学期要开始了 真的要搞智慧视觉了吗','155','1655652840','1655653089','<!--markdown-->## 快乐小学期 ##

**小组选题：公路卡口监控系统**
实现卡车车辆的监控，主要包括：
 1. 车辆捕获
在汽车通过时,系统能准确拍摄汽车特征图像,并在图像中标明汽车通行数 据,如时间、地点、车速、方向等。
 2. 速度测定
 3. 图像记录
在车辆通过时,系统能准确拍摄车辆前部特写图像两张,并将图像存储到磁 盘下,并在图像中标明车辆通行数据,如时间、地点、车速、方向等
 4. 车辆识别
对每辆车系统至少拍摄两幅特征图片,从图像中可以判断出车辆全部特征, 包括车辆行驶方向、经过时间、地点、车速、车身颜色、车辆类型、车牌号码等, 并根据所拍摄的车辆正面特征图片进行车辆号码和车牌颜色自动识别。
 5. 信息上传
各监控点提供车辆信息自动上传功能,上传内容包括违章车辆的图片信息, 非违章车辆的基本信息, 非违章车辆的图片保存于路口机中不需上传。


----------
**感觉。。。 难度挺大的**
![转圈圈.gif][1]
这当毕设完全可以了我感觉 先慢慢搞吧
技术选型我还没决定好

    技术选型，可以用JavaEE也可以采用.NET或Python但必须采用对标的框架，以下要求按JavaEE架构：
    必要项：
    1.【必要项】前后端分离，后端RESTful API；
    2.【必要项】后端Spring Boot或Spring MVC + Spring IOC；
    3.【必要项】ORM框架，Mybatis/MybatisPlus或JPA，需要引入数据库连接池，如Druid；
    4.【必要项】Git代码托管，需要全程利用Git进行代码托管；
    5.【必要项】日志框架，Log4j等；
    6.【必要项】权限管理框架，Spring Security或Shiro等；

    可选项，至少满足两个可选项的要求：
    1.【可选项】消息中间件，RabbitMQ、Kafka等；
    2.【可选项】分布式任务调度框架Quartz等；
    3.【可选项】微服务，Spring Cloud、Dubble等；
    4.【可选项】报表FineReport、JasperReports等；
    5.【可选项】小程序/APP客户端，在原Web端基础上增加；
    6.【可选项】工作流框架Activiti等；
    7.【可选项】NoSQL数据库，Redis，用于Token、计数器、消息队列系统、排行榜、社交网络和实时系统等（至少实现一    
    种），业务系统核心功能仍需要关系型数据库MySQL或MS-SQL；
    8.【可选项】全文搜索引擎框架Lucene/Elasticsearch等；
    9.【可选项】实现分布式存储Hbase
    10. 【可选项】持续集成Jenkins以及Docker 容器部署项目
    11.【可选项】集成其它JavaEE开发/分布式框架/大数据框架到项目中，如：MongoDB、ZooKeeper
    


赶快做完！ 做完跑路！


  [1]: https://danzaii.cn/usr/uploads/2022/06/612313418.gif','0','1','','post','publish','','0','1','1','1','0','207');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('156','Screenshot_20220626_021009_tv.danmaku.bili.jpg','Screenshot_20220626_021009_tv-danmaku-bili-jpg','1656233870','1656233870','a:5:{s:4:\"name\";s:46:\"Screenshot_20220626_021009_tv.danmaku.bili.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/3935347973.jpg\";s:4:\"size\";i:725991;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','109','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('157','Screenshot_20220626_020824_tv.danmaku.bili.jpg','Screenshot_20220626_020824_tv-danmaku-bili-jpg','1656233879','1656233879','a:5:{s:4:\"name\";s:46:\"Screenshot_20220626_020824_tv.danmaku.bili.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/3541844492.jpg\";s:4:\"size\";i:523304;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','2','1','','attachment','publish','','0','1','0','1','109','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('158','Screenshot_20220626_020818_tv.danmaku.bili.jpg','Screenshot_20220626_020818_tv-danmaku-bili-jpg','1656233886','1656233886','a:5:{s:4:\"name\";s:46:\"Screenshot_20220626_020818_tv.danmaku.bili.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/2235652537.jpg\";s:4:\"size\";i:564384;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','3','1','','attachment','publish','','0','1','0','1','109','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('159','式守同学 可爱捏 贴贴','159','1656233925','1656233925','<!--markdown-->![Screenshot_20220626_021009_tv.danmaku.bili.jpg][1]

![Screenshot_20220626_020824_tv.danmaku.bili.jpg][2]

![Screenshot_20220626_020818_tv.danmaku.bili.jpg][3]


  [1]: https://danzaii.cn/usr/uploads/2022/06/3935347973.jpg
  [2]: https://danzaii.cn/usr/uploads/2022/06/3541844492.jpg
  [3]: https://danzaii.cn/usr/uploads/2022/06/2235652537.jpg','0','1','','post','publish','','0','1','1','1','0','182');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('160','冥冥生日.png','冥冥生日-png','1656397801','1656397801','a:5:{s:4:\"name\";s:16:\"冥冥生日.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/4060934198.png\";s:4:\"size\";i:395320;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','111','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('161','冥冥生日快乐！','161','1656397809','1656397809','<!--markdown-->很抱歉打断您的浏览，但是我想说冥冥将会于6月28日北京时间20:00，准时进行《生日盛典直播》，所以请您保持设备全开，确保能够准时收看全世界最可爱的冥冥的直播，冥门保佑！冥不灭！![][1]
**直播间传送门：**[冥冥的直播间][2]


  [1]: https://danzaii.cn/usr/themes/Cuckoo-master/assets/images/OwO/meichan/yyds.png
  [2]: https://live.bilibili.com/22650610','0','1','','post','publish','','1','1','1','1','0','433');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('162','liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_14_50.jpeg','liveScreenshot-明天就是生日-明天就是-2022-06-28_21_14_50-jpeg','1656433995','1656433995','a:5:{s:4:\"name\";s:73:\"liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_14_50.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2022/06/2386654839.jpeg\";s:4:\"size\";i:496946;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('163','liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_10_54.jpeg','liveScreenshot-明天就是生日-明天就是-2022-06-28_21_10_54-jpeg','1656434005','1656434005','a:5:{s:4:\"name\";s:73:\"liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_10_54.jpeg\";s:4:\"path\";s:34:\"/usr/uploads/2022/06/52713107.jpeg\";s:4:\"size\";i:476575;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','2','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('164','liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_18_50.jpeg','liveScreenshot-明天就是生日-明天就是-2022-06-28_21_18_50-jpeg','1656434014','1656434014','a:5:{s:4:\"name\";s:73:\"liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_18_50.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2022/06/3658844873.jpeg\";s:4:\"size\";i:570542;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','3','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('165','liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_30_53.jpeg','liveScreenshot-明天就是生日-明天就是-2022-06-28_21_30_53-jpeg','1656434022','1656434022','a:5:{s:4:\"name\";s:73:\"liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_30_53.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2022/06/2591165220.jpeg\";s:4:\"size\";i:520841;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','4','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('166','liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_11_43.jpeg','liveScreenshot-明天就是生日-明天就是-2022-06-28_21_11_43-jpeg','1656434032','1656434032','a:5:{s:4:\"name\";s:73:\"liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_11_43.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2022/06/1939103632.jpeg\";s:4:\"size\";i:476363;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','5','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('167','liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_18_35.jpeg','liveScreenshot-明天就是生日-明天就是-2022-06-28_21_18_35-jpeg','1656434040','1656434040','a:5:{s:4:\"name\";s:73:\"liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_18_35.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2022/06/1032141279.jpeg\";s:4:\"size\";i:577353;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','6','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('168','liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_12_01.jpeg','liveScreenshot-明天就是生日-明天就是-2022-06-28_21_12_01-jpeg','1656434050','1656434050','a:5:{s:4:\"name\";s:73:\"liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_12_01.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2022/06/2441170913.jpeg\";s:4:\"size\";i:470613;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','7','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('169','liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_18_41.jpeg','liveScreenshot-明天就是生日-明天就是-2022-06-28_21_18_41-jpeg','1656434059','1656434059','a:5:{s:4:\"name\";s:73:\"liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_18_41.jpeg\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/535184219.jpeg\";s:4:\"size\";i:568385;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','8','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('170','W1X}NV)%JZUU0V(U%Q2HNEU.png','W1X-NV-JZUU0V-U-Q2HNEU-png','1656434074','1656434074','a:5:{s:4:\"name\";s:27:\"W1X}NV)%JZUU0V(U%Q2HNEU.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/06/2840349621.png\";s:4:\"size\";i:2091028;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','9','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('171','liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_12_30.jpeg','liveScreenshot-明天就是生日-明天就是-2022-06-28_21_12_30-jpeg','1656434089','1656434089','a:5:{s:4:\"name\";s:73:\"liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_12_30.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2022/06/1107219353.jpeg\";s:4:\"size\";i:485367;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','10','1','','attachment','publish','','0','1','0','1','122','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('172','冥冥的新机甲！好美！','172','1656434100','1656434575','<!--markdown-->![liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_14_50.jpeg][1]

![liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_10_54.jpeg][2]

![liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_18_50.jpeg][3]

![liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_30_53.jpeg][4]

![liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_11_43.jpeg][5]

![liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_18_35.jpeg][6]

![liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_12_01.jpeg][7]

![liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_18_41.jpeg][8]

![W1X}NV)%JZUU0V(U%Q2HNEU.png][9]

![liveScreenshot-明天就是生日!!明天就是!.2022-06-28_21_12_30.jpeg][10]

新模型好棒！脸部成3D的了 表情也精细了好多！
总之就是非常可爱！！！！
[Meting]
[Music title=\"CANDY CANDY\" author=\"冥冥meichan\" url=\"https://danzaii.cn/bgm/CANDY.mp3\" pic=\"https://danzaii.cn/usr/uploads/2022/06/2441170913.jpeg\" lrc=\"\"/]
[/Meting]

  [1]: https://danzaii.cn/usr/uploads/2022/06/2386654839.jpeg
  [2]: https://danzaii.cn/usr/uploads/2022/06/52713107.jpeg
  [3]: https://danzaii.cn/usr/uploads/2022/06/3658844873.jpeg
  [4]: https://danzaii.cn/usr/uploads/2022/06/2591165220.jpeg
  [5]: https://danzaii.cn/usr/uploads/2022/06/1939103632.jpeg
  [6]: https://danzaii.cn/usr/uploads/2022/06/1032141279.jpeg
  [7]: https://danzaii.cn/usr/uploads/2022/06/2441170913.jpeg
  [8]: https://danzaii.cn/usr/uploads/2022/06/535184219.jpeg
  [9]: https://danzaii.cn/usr/uploads/2022/06/2840349621.png
  [10]: https://danzaii.cn/usr/uploads/2022/06/1107219353.jpeg','0','1','','post','publish','','0','1','1','1','0','268');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('173','冥冥千舰1.png','冥冥千舰1-png','1656689955','1656689955','a:5:{s:4:\"name\";s:17:\"冥冥千舰1.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/07/3186099573.png\";s:4:\"size\";i:1787984;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','126','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('174','冥冥千舰2.png','冥冥千舰2-png','1656689963','1656689963','a:5:{s:4:\"name\";s:17:\"冥冥千舰2.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/07/3505826223.png\";s:4:\"size\";i:1761969;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','2','1','','attachment','publish','','0','1','0','1','126','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('175','冥冥千舰3.png','冥冥千舰3-png','1656690065','1656690065','a:5:{s:4:\"name\";s:17:\"冥冥千舰3.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/07/1824813576.png\";s:4:\"size\";i:116434;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','3','1','','attachment','publish','','0','1','0','1','126','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('176','冥冥千舰啦！！！！ 恭喜恭喜！！！','176','1656690075','1656690075','<!--markdown-->![冥冥千舰1.png][1]

![冥冥千舰2.png][2]


  [1]: https://danzaii.cn/usr/uploads/2022/07/3186099573.png
  [2]: https://danzaii.cn/usr/uploads/2022/07/3505826223.png','0','1','','post','publish','','0','1','1','1','0','247');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('177','1547392991324.jpeg','1547392991324-jpeg','1656776057','1656776057','a:5:{s:4:\"name\";s:18:\"1547392991324.jpeg\";s:4:\"path\";s:36:\"/usr/uploads/2022/07/3301593557.jpeg\";s:4:\"size\";i:751500;s:4:\"type\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','128','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('178','人生第一次受到网络攻击 直接给我敲响警钟了','178','1656776061','1656776061','<!--markdown-->小学期项目最终决定加入MongoDB实现部分表的存储
昨天在服务器上直接放开了MongoDB的端口和外网访问 设置的数据库连密码都没有
以为不会有人攻击自己服务器 结果今天早上一睁眼就悲剧了
同组的人连接数据库一直连接不上 找了半天问题 最后我们一看日志就傻了
整个MongoDB的库全被删完了 真就删库跑路呗
还好数据还没开始录入 没有什么致命问题
我一查还是个英国ip 还挂梯子搞我？
现在设置了强密码 关键数据库也只给本地开放了
以后要多注意数据库安全问题了 不能图一时简单
整个密码管理服务还是很有必要的啊
强密码实在记不住','0','1','','post','publish','','0','1','1','1','0','268');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('179','ZIPANG.png','ZIPANG-png','1658136337','1658136337','a:5:{s:4:\"name\";s:10:\"ZIPANG.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/07/3460028821.png\";s:4:\"size\";i:2462150;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','130','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('180','Linux虚拟机配置网络找不到本地ip地址','180','1658136349','1658136349','<!--markdown-->ifconfig之后显示eth0，但是没有显示“inet/地址/广播/掩码/ ”?

先用sudo dhclient eth0更新IP地址

然后运行sudo ifconfig eth0

如果还没有ip，直接进行重启：reboot

或者查看DHCP服务是否关了','0','1','','post','publish','','0','1','1','1','0','280');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('181','aiinf12.png','aiinf12-png','1659676420','1659676420','a:5:{s:4:\"name\";s:11:\"aiinf12.png\";s:4:\"path\";s:34:\"/usr/uploads/2022/08/365144376.png\";s:4:\"size\";i:40442;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','1','1','','attachment','publish','','0','1','0','1','135','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('182','gohaku1.jpg','gohaku1-jpg','1659676766','1659676766','a:5:{s:4:\"name\";s:11:\"gohaku1.jpg\";s:4:\"path\";s:34:\"/usr/uploads/2022/08/173801331.jpg\";s:4:\"size\";i:654034;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','2','1','','attachment','publish','','0','1','0','1','135','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('183','gohaku2.jpg','gohaku2-jpg','1659676770','1659676770','a:5:{s:4:\"name\";s:11:\"gohaku2.jpg\";s:4:\"path\";s:34:\"/usr/uploads/2022/08/542112537.jpg\";s:4:\"size\";i:466391;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','3','1','','attachment','publish','','0','1','0','1','135','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('184','illust_65480793_20171019_123358.png','illust_65480793_20171019_123358-png','1659676836','1659676836','a:5:{s:4:\"name\";s:35:\"illust_65480793_20171019_123358.png\";s:4:\"path\";s:35:\"/usr/uploads/2022/08/1295145074.png\";s:4:\"size\";i:1468791;s:4:\"type\";s:3:\"png\";s:4:\"mime\";s:9:\"image/png\";}','4','1','','attachment','publish','','0','1','0','1','135','0');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('185','把心思藏进F12','185','1659676860','1659676985','<!--markdown-->**偷来的罢了：[乃王木木生日快乐！][1]**
--------------------

![aiinf12.png][2]

![gohaku1.jpg][3]

![gohaku2.jpg][4]



[Meting]
[Music server=\"netease\" id=\"1834823818\" type=\"song\"/]
[/Meting]

  [1]: https://danzai233.github.io/happy-birthday/
  [2]: https://danzaii.cn/usr/uploads/2022/08/365144376.png
  [3]: https://danzaii.cn/usr/uploads/2022/08/173801331.jpg
  [4]: https://danzaii.cn/usr/uploads/2022/08/542112537.jpg','0','1','','post','publish','','0','1','1','1','0','283');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('188','数据库完成抢修 博客复原！','188','1702055368','1702055368','<!--markdown-->当我发布这个博客的时候 数据已经完成抢修！
---------------------

历史博客已经完全恢复！
后续会把恢复步骤整理一下 总之 感谢一年前的自己（相信一年后的自己）
完完全全是后人的力量啊 当初觉得自己水平不够修好 误打误撞的存了一份镜像 （其实有两份 正式迁移服务器的时候还有一份）但是其中一份的数据库是已经重置之后的 没什么参考价值了
还好自己有留backup的好习惯（哎嘿嘿）
也要感谢大家给予的帮助和指导给了我许多恢复数据的思路

多亏了你啊 爱博！
![爱“莉希雅”机][1]

**最后：把数据传给一年后的自己！**


  [1]: https://danzaii.cn/usr/uploads/2023/12/1954401849.jpg','0','1','','post','publish','','0','1','1','1','0','721');
INSERT INTO `typecho_contents` (`cid`,`title`,`slug`,`created`,`modified`,`text`,`order`,`authorId`,`template`,`type`,`status`,`password`,`commentsNum`,`allowComment`,`allowPing`,`allowFeed`,`parent`,`views`) VALUES ('189','QQ图片20231209010854.jpg','QQ图片20231209010854-jpg','1702055338','1702055338','a:5:{s:4:\"name\";s:26:\"QQ图片20231209010854.jpg\";s:4:\"path\";s:35:\"/usr/uploads/2023/12/1954401849.jpg\";s:4:\"size\";i:1953927;s:4:\"type\";s:3:\"jpg\";s:4:\"mime\";s:10:\"image/jpeg\";}','1','1','','attachment','publish','','0','1','0','1','188','0');


DROP TABLE IF EXISTS typecho_links;
CREATE TABLE `typecho_links` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'links表主键',
  `name` varchar(50) DEFAULT NULL COMMENT 'links名称',
  `url` varchar(200) DEFAULT NULL COMMENT 'links网址',
  `sort` varchar(50) DEFAULT NULL COMMENT 'links分类',
  `email` varchar(50) DEFAULT NULL COMMENT 'links邮箱',
  `image` varchar(200) DEFAULT NULL COMMENT 'links图片',
  `description` varchar(200) DEFAULT NULL COMMENT 'links描述',
  `user` varchar(200) DEFAULT NULL COMMENT '自定义',
  `state` int(10) DEFAULT '1' COMMENT 'links状态',
  `order` int(10) unsigned DEFAULT '0' COMMENT 'links排序',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `typecho_links` (`lid`,`name`,`url`,`sort`,`email`,`image`,`description`,`user`,`state`,`order`) VALUES ('1','地皮小木屋','https://dpii.club','','','https://s.gravatar.com/avatar/40539b37aea898b05847a43a540cb389?s=256','','','1','1');
INSERT INTO `typecho_links` (`lid`,`name`,`url`,`sort`,`email`,`image`,`description`,`user`,`state`,`order`) VALUES ('2','FNSFLM','https://fnsflm.xyz/','','','https://cdn.jsdelivr.net/gh/fnsflmzqdydk/myPicbed//IMG_20210105_010503.jpg','','','1','2');

DROP TABLE IF EXISTS typecho_metas;
CREATE TABLE `typecho_metas` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `count` int(10) unsigned DEFAULT '0',
  `order` int(10) unsigned DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('2','技术学习','study','category','','4','1','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('3','说说','note','category','','6','2','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('4','MC','MC','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('5','CSGO','CSGO','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('6','服务器','服务器','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('7','Go','Go','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('8','Java','Java','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('9','说说','说说','tag','','2','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('10','冥冥','冥冥','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('11','锘锘子','锘锘子','tag','','2','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('12','恋爱记录','恋爱记录','tag','','2','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('13','学习','学习','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('14','AI','AI','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('15','音乐','音乐','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('16','视频','视频','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('17','网络问题','网络问题','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('18','SSH','SSH','tag','','0','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('19','github','github','tag','','1','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('20','踩坑','踩坑','tag','','1','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('21','虚拟机','虚拟机','tag','','1','0','0');
INSERT INTO `typecho_metas` (`mid`,`name`,`slug`,`type`,`description`,`count`,`order`,`parent`) VALUES ('22','nuo nuo zi','nuo-nuo-zi','tag','','0','0','0');
