---
image: "/img/posts/post_4068.webp"

title: "最近又搞了些什么：Aim Trainer Pro & MYGallery 大更新"
description: "做了一个高性能瞄准训练器，还给照片墙系统加了一大堆新功能。"
date: 2026-02-27
slug: "recent-updates-feb-2026"
tags:
    - 项目总结
    - TypeScript
    - Go
    - 开源
categories:
    - 技术
---

上一篇项目回顾的墨迹还没干，这几天又搞了两个大活。一个全新项目，一个大版本更新，简单记录一下。

<!--more-->

## 🎯 Aim Trainer Pro —— 网页端瞄准训练器

> 仓库：[DanZai233/AIMBOT](https://github.com/DanZai233/AIMBOT) | [在线体验](https://aimbot-umber.vercel.app)

一款高性能、高度可定制的网页端鼠标瞄准训练器。用来练甩枪、练追踪、练微调，FPS 玩家应该都懂这种工具。

![主菜单](https://raw.githubusercontent.com/DanZai233/AIMBOT/main/docs/screenshots/main-menu.webp)

### 四种训练模式

| 模式 | 说明 |
|------|------|
| **Gridshot** | 经典甩枪训练，命中网格上出现的 3 个目标 |
| **Spidershot** | 从中心目标甩向随机外围目标再返回 |
| **Microflick** | 小目标出现在屏幕中心附近，训练微调精度 |
| **Tracking** | 追踪移动目标，按住鼠标左键持续得分 |

### 丰富的自定义

这个项目我在自定义上下了不少功夫。右侧滑出的设置面板可以调整几乎所有参数：

- 训练时间：15 / 30 / 60 / 120 秒
- 目标大小和速度
- 目标形状：圆形 / 菱形 / 星形 / 六边形 / 三角形
- 光标样式：十字线 / 圆点 / 圆环 / 精确十字
- 5 种主题配色 + 4 种背景主题

![设置面板](https://raw.githubusercontent.com/DanZai233/AIMBOT/main/docs/screenshots/settings-panel.webp)

### 实际游戏画面

不同配色和目标形状的效果：

![青色圆形目标](https://raw.githubusercontent.com/DanZai233/AIMBOT/main/docs/screenshots/gameplay-gridshot.webp)

![紫色星形目标](https://raw.githubusercontent.com/DanZai233/AIMBOT/main/docs/screenshots/gameplay-purple-stars.webp)

### 成绩统计

每局结束会给出 S/A/B/C/D 等级评定，还有精准度、命中/失误次数等详细统计，数字还有递增动画效果。

![结果界面](https://raw.githubusercontent.com/DanZai233/AIMBOT/main/docs/screenshots/results-screen.webp)

### 技术亮点

- **零延迟光标**：用 CSS SVG 自定义光标，操作系统原生渲染，完全零延迟
- **DPI 感知**：适配 Retina 高分屏
- **Canvas 渲染**：优化的渲染管线，稳定 60fps
- 命中粒子爆炸、得分浮动弹出、失误红色闪光……动效细节拉满
    - 技术栈：React 19 + TypeScript + Vite 6 + Tailwind CSS v4 + Canvas

---

## 📷 MYGallery 大更新 —— 照片墙系统

> 仓库：[DanZai233/MYGallery](https://github.com/DanZai233/MYGallery) | 在线：[photo.danzaii.cn](https://photo.danzaii.cn)

MYGallery 这次迎来了一波大更新，新增了好几个重量级功能。

### 全新灯箱查看器

ChronoFrame 风格的全屏查看器，右侧信息面板分区展示 EXIF 元数据，底部缩略图条可以快速跳转。

![灯箱查看器](https://raw.githubusercontent.com/DanZai233/MYGallery/main/docs/screenshots/lightbox-info.webp)

### GPS 迷你地图

当照片包含 GPS 坐标时，信息面板顶部会嵌入 Leaflet 迷你地图，实时显示拍摄位置。每张照片在哪里拍的一目了然。

![GPS 迷你地图](https://raw.githubusercontent.com/DanZai233/MYGallery/main/docs/screenshots/lightbox-minimap.webp)

### 照片地图

全新的地图页面，基于 Leaflet + OpenStreetMap，所有带 GPS 坐标的照片都会标记在地图上，支持聚合标记。

![地图标记](https://raw.githubusercontent.com/DanZai233/MYGallery/main/docs/screenshots/map-markers.webp)

### 表态系统

访客可以对照片进行 emoji 表态（👍❤️😍😂😮😢🔥✨），不需要登录，基于指纹识别。终于可以知道大家喜欢哪些照片了。

![表态系统](https://raw.githubusercontent.com/DanZai233/MYGallery/main/docs/screenshots/reactions.webp)

### 暗色 / 亮色主题

默认暗色主题，5 列紧凑瀑布流布局。也可以一键切换亮色模式，偏好会自动记忆。

![暗色模式](https://raw.githubusercontent.com/DanZai233/MYGallery/main/docs/screenshots/gallery-dark.webp)

![亮色模式](https://raw.githubusercontent.com/DanZai233/MYGallery/main/docs/screenshots/gallery-light.webp)

### 后台管理

    ChronoFrame 风格侧栏导航，仪表盘统计，拖拽上传，照片和分类管理一站搞定。

    ![后台管理](https://raw.githubusercontent.com/DanZai233/MYGallery/main/docs/screenshots/admin.webp)

---

## 小结

AIMBOT 从零到上线大概花了两天，MYGallery 的更新则是断断续续改了一周。两个项目方向完全不同——一个是 Canvas 游戏，一个是全栈应用——但都很有成就感。

接下来 MYGallery 还打算加视频支持和更多的社交功能。AIMBOT 如果有时间的话想加排行榜和自定义地图编辑器。

不过说实话……做完这些我应该休息两天了 😂
