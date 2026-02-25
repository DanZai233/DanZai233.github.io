---
title: "这几个月我都做了些什么——我的开源项目回顾"
description: "从 2025 年 10 月到 2026 年 2 月，我密集地做了十几个开源项目。这篇文章回顾一下这段疯狂输出的日子。"
date: 2026-02-25
slug: "my-open-source-journey"
tags:
    - 开源
    - 项目总结
    - AI
    - TypeScript
categories:
    - 技术
---

从去年 10 月到现在，我一口气做了十几个开源项目。有的是认真打磨的作品，有的是灵光一闪的小实验，回头看这几个月确实挺充实的。趁着刚搭好博客，来一篇完整的回顾。

<!--more-->

## 认真打磨的项目

### 📷 MYGallery —— 个人照片墙系统

> 仓库：[DanZai233/MYGallery](https://github.com/DanZai233/MYGallery)

这是投入精力最多的一个项目。用 Go 写的后端，前端是瀑布流画廊布局，支持暗色/亮色主题切换、EXIF 信息展示、GPS 迷你地图定位拍摄位置。

做这个的初衷是想要一个属于自己的照片展示空间，而不是依赖各种平台。现在它就跑在 [photo.danzaii.cn](https://photo.danzaii.cn) 上。

**技术亮点：**
- Go 后端 + 瀑布流前端
- ChronoFrame 风格全屏灯箱查看器
- Leaflet 集成，拍摄位置自动展示
- 支持自部署

### 🎨 Chromatopoetry —— 灵韵配色

> 仓库：[DanZai233/Chromatopoetry](https://github.com/DanZai233/Chromatopoetry) | [在线体验](https://chromatopoetry.vercel.app)

一款 AI 驱动的色彩美学应用。输入一段文字描述，AI 会生成富有诗意的配色方案；也可以上传图片，智能提取色彩。支持 Gemini、OpenAI、DeepSeek 等多家模型。

最喜欢的功能是实时预览——生成的配色方案可以直接套用到诗意、电商、博客等不同风格的模板上，直观感受配色效果。

### 🟣 PixelBead —— 拼豆设计工具

> 仓库：[DanZai233/PixelBead](https://github.com/DanZai233/PixelBead) | [在线体验](https://pixel-bead.vercel.app)

一个功能挺全的拼豆像素画设计工具。支持画笔、橡皮擦、填充、直线、矩形、圆形等绘图工具，还能用 AI 生成像素画，或者上传图片自动转换。

做这个纯粹是因为女朋友喜欢拼豆，想给她做个方便设计图纸的工具。支持导出 JSON 图纸和自动统计每种颜色需要的珠子数量。

### 💬 PixelChat —— 像素风匿名聊天室

> 仓库：[DanZai233/PixelChat](https://github.com/DanZai233/PixelChat)

前后端分离的匿名聊天室，像素艺术风格 UI。前端 React + TypeScript，后端 Go + WebSocket 实时通信。支持 Docker 部署。

这个项目让我学到了不少 WebSocket 和实时通信的知识。

## AI 驱动的小工具

去年底到今年初，Google AI Studio 让快速构建 AI 应用变得特别方便，我借这个平台做了一系列小工具：

### 🎭 MoodCard —— 心情卡片

> 仓库：[DanZai233/MoodCard](https://github.com/DanZai233/MoodCard) | [在线体验](https://mood-card.vercel.app)

用 AI 生成心情卡片，支持 OpenAI、Claude、智谱 AI 等多个模型。最近的项目，2 月份刚做的。

### ✍️ Record-ME —— 记录"我"

> 仓库：[DanZai233/Record-ME](https://github.com/DanZai233/Record-ME)

中英双语的创意写作环境，AI 辅助续写。界面做了好几套主题（Serene、Dark、Forest、Sepia、Cyberpunk），追求沉浸式的写作体验。

### 🍔 WhatToEat —— 今天吃什么

> 仓库：[DanZai233/WhatToEat](https://github.com/DanZai233/WhatToEat)

经典难题的 AI 解决方案。不知道吃什么的时候问问 AI，虽然最后可能还是选不出来 😂

### 📰 NewsChronicle-AI —— AI 新闻编年

> 仓库：[DanZai233/NewsChronicle-AI](https://github.com/DanZai233/NewsChronicle-AI)

AI 驱动的新闻聚合和摘要工具。

### 📖 GenManga —— AI 漫画生成

> 仓库：[DanZai233/GenManga](https://github.com/DanZai233/GenManga)

用 AI 生成漫画，也是基于 Google AI Studio 构建的实验项目。

## 有趣的小实验

### 🍸 Termix —— 终端调酒游戏

> 仓库：[DanZai233/Termix](https://github.com/DanZai233/Termix)

Python 写的终端调酒小游戏，有可爱的 ASCII 兔女郎角色、30+ 调酒材料、18 个配方。全键盘操作，在终端里就能体验调酒的乐趣。

这个项目纯粹是好玩，但做的过程中学到了不少终端 UI 的技巧。

### 🚽 Toiletime

> 仓库：[DanZai233/Toiletime](https://github.com/DanZai233/Toiletime) | [在线体验](https://toiletime.vercel.app)

离开工位时添加一条说明——灵感来源是办公室里同事总问"XX 人呢？"，于是做了这个小工具。

### ⌨️ Keyboard

> 仓库：[DanZai233/keyboard](https://github.com/DanZai233/keyboard)

一个键盘相关的 TypeScript 项目。

## 技术栈总结

回顾这些项目，能看出我这几个月的技术路线：

- **主力语言**：TypeScript 占了绝大多数，Go 用在需要性能的后端
- **AI 集成**：大量项目集成了 AI 能力（Gemini、OpenAI、DeepSeek、Claude）
- **部署方式**：Vercel 是首选，Docker 作为备选
- **前端框架**：React 为主
- **偶尔跨界**：Python（Termix）、Swift（MixLife）

## 一些感想

这几个月密集产出的体验很特别。每个项目从想法到上线通常就几天时间，虽然不是每个都打磨得很精致，但每个项目都让我学到了新东西。

AI 工具确实大幅降低了开发门槛。以前做一个完整的应用需要很长时间，现在从想法到 MVP 可能只需要一个晚上。这让"做点什么"变得前所未有的容易。

接下来打算放慢节奏，挑几个有潜力的项目深入打磨，而不是继续铺量。质量比数量重要。

---

如果你对这些项目感兴趣，欢迎去 [我的 GitHub](https://github.com/DanZai233) 逛逛，Star ⭐ 和 Issue 都欢迎！
