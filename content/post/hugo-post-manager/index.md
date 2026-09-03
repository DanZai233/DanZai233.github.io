---
image: "home.jpg"
title: "Hugo Post Manager：把 Hugo 写作流程搬进浏览器"
description: "给 Hugo 做了一个可视化管理工具，连接 GitHub 仓库后可以直接编辑文章、维护 Front Matter、实时预览、用 AI 助手润色，并一键触发 Actions 部署。"
date: 2026-09-03
slug: "hugo-post-manager"
keywords: ["Hugo", "Hugo Post Manager", "Hugo Studio", "Markdown", "GitHub Actions", "AI 写作", "React"]
tags:
    - Hugo
    - 项目总结
    - Markdown
    - AI
    - GitHub Actions
categories:
    - 技术
---

最近写博客时我再次意识到，最麻烦的其实不是写正文，而是发布前那一串重复动作：打开编辑器、写 Markdown、调 Front Matter、启动本地服务、确认排版、提交 Git、推到 GitHub，然后等着 Actions 部署。

这些步骤当然不复杂，但每次都要来一遍，就有点消耗手感。

所以我做了一个 **Hugo Post Manager（Hugo Studio）**，把这套流程搬进浏览器里。

GitHub：[DanZai233/Hugo-Post-Manager](https://github.com/DanZai233/Hugo-Post-Manager)

<!--more-->

![Hugo Post Manager 首页截图](home.jpg)

## 它是什么

Hugo Post Manager 是一个可视化管理 Hugo 博客的 Web 应用。

连接 GitHub 仓库之后，它可以读取文章列表，打开一篇 Markdown，直接修改正文和 Front Matter，并在右侧看到实时预览。改动完成后，可以查看 diff，确认没问题再提交到 GitHub，并触发 Actions 自动部署。

它支持两种常见的 Hugo 文章结构：

- `content/posts/*.md` 单文件结构；
- `content/post/<slug>/index.md` Page Bundle 结构。

没有连接仓库时，它也可以进入演示模式，先把界面和编辑流程体验一遍。

这个工具没有想把 Hugo 改成传统 CMS，文章依然是一份份 Markdown，历史依然在 Git 里。它只是把编辑、预览、提交和部署观察放在同一个界面里，让写作的启动成本低一点。

## 编辑器：Markdown、Front Matter 和预览放在一起

编辑器部分是我最喜欢的界面。

![Hugo Post Manager 编辑器截图](editor.jpg)

左侧是文章列表，可以搜索、按状态筛选，也能按标签过滤；中间是 Markdown 编辑区；右侧是 Hugo 风格的实时预览。文章标题、日期、slug、作者、标签、分类、摘要、封面、目录、数学公式这些 Front Matter 字段，也有专门的可视化面板。

Markdown 工具栏里放了标题、粗体、斜体、代码块、引用、列表、表格、分割线这些常用结构，也内置了 `<!--more-->`、`figure`、`alert` 这类 Hugo 常用片段。图片上传后会自动生成 Hugo `figure` 短代码，不用每次手写完整结构。

这样改一篇文章时，不用再在编辑器、本地预览、GitHub 网页之间来回切窗口。

## AI 写作助手

![Hugo Post Manager AI 助手截图](assistant.jpg)

右侧还有一个可自定义的 AI 写作助手。

它可以配置名字、性格、对你的称呼和额外写作规则。选中一篇文章后，还能让它先分析写作风格，提炼用词、句式和结构习惯，然后把这份画像写进助手人设。之后让它继续写、改写、润色时，会更接近你自己的语感。

一些快捷动作也已经内置：

- 继续写本文；
- 列大纲；
- 起 5 个标题；
- 润色全文；
- 写 TL;DR；
- 挑错别字。

模型层接入了 `unillm-sdk`，可以配置 DeepSeek、OpenAI、Claude、Gemini、Kimi、通义千问、智谱 GLM、豆包、Grok、Groq、Mistral、硅基流动、Ollama 等服务。你既可以自己填 API Key，也可以在服务端环境变量里配置一份。

我更想把 AI 放在旁边，而不是让它替你决定文章该说什么。所以这里做的是对话式辅助和快捷动作，不是一键无人值守生成一篇博客。

## 从仓库到部署

发布相关的能力也直接做了进去。

如果你已经有 Hugo 博客仓库，可以在仓库配置里填 Owner、Repo、分支和文章目录。公开仓库可以只读体验；要提交文章和触发部署，就需要一个带 `repo` 和 `workflow` 权限的 GitHub Token。

如果你还没有博客仓库，它也内置了一个「从零创建博客」向导，会自动写入 Hugo 脚手架、Stack 主题、GitHub Actions 自动部署流程和示例文章。对刚想搭博客的人来说，这条路会比从空文件夹开始舒服很多。

改动准备发布时，工具会先展示提交预览和 diff，确认后再提交到 GitHub。提交之后，还能看到 Actions 运行状态，不用另外打开仓库页面盯日志。

这里有个边界要说明清楚：这个工具部署的是「管理器」本身，不是你的博客。你的 Hugo 博客仍然部署在 GitHub Pages、Cloudflare Pages 或其他地方，两者是独立的。

## 技术栈

这次用的还是一套很顺手的组合：

- React 19
- TypeScript
- Vite 6
- Tailwind CSS v4
- Express 4
- `js-yaml`
- `unillm-sdk`

本地开发时可以直接跑 Express + Vite；部署到 Vercel 后，Express 会变成 Serverless Function，前端静态产物交给 Vercel CDN 托管。README 里也准备了一键部署按钮和详细部署指南。

## 做完之后

这个项目对我来说很实用。

Hugo 本身很快，Git 也足够可靠，但写作工具链里的很多步骤还是偏手动。Hugo Post Manager 不是要替代终端和本地编辑器，而是给日常更新提供一个更轻的入口：打开浏览器，选择文章，改完，预览，确认 diff，发布。

我觉得它最适合的场景是日常小修小补、写草稿、改错别字、补一段内容，或者临时帮朋友维护一个 Hugo 博客。至于长文写作，你还是可以继续用自己的编辑器，写完再放进这个流程里发布。

项目已经开源：[github.com/DanZai233/Hugo-Post-Manager](https://github.com/DanZai233/Hugo-Post-Manager)。

如果你也在用 Hugo，欢迎试试。
