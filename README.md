# Dan_Zai 的博客 🐑

基于 [Hugo](https://gohugo.io/) + [Stack 主题](https://github.com/CaiJimmy/hugo-theme-stack) 的个人博客，通过 GitHub Actions 自动部署到 GitHub Pages。

**在线访问**: [https://danzai233.github.io/](https://danzai233.github.io/)

---

## 快速开始

### 环境要求

- [Hugo Extended](https://gohugo.io/installation/) >= 0.154.0（必须是 **extended** 版本）
- Git

### 安装 Hugo

```bash
# Linux (amd64)
wget -O /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.156.0/hugo_extended_0.156.0_linux-amd64.tar.gz
tar -xzf /tmp/hugo.tar.gz -C /tmp hugo
sudo mv /tmp/hugo /usr/local/bin/

# 验证安装（输出应包含 +extended）
hugo version
```

其他平台请参考 [Hugo 官方安装文档](https://gohugo.io/installation/)。

### 克隆并运行

```bash
git clone --recursive https://github.com/DanZai233/DanZai233.github.io.git
cd DanZai233.github.io

# 如果忘了 --recursive，手动拉取主题
git submodule update --init --recursive

# 启动本地开发服务器（含草稿预览）
hugo server -D
```

浏览器打开 http://localhost:1313/ 即可预览。

---

## 发布文章

### 创建新文章

```bash
hugo new content post/my-new-post/index.md
```

这会在 `content/post/my-new-post/` 下创建 `index.md`，自动生成的模板如下：

```yaml
---
title: "My New Post"
date: 2026-02-25T12:00:00Z
draft: true          # ← 改为 false 才会正式发布
description: ""
tags:
categories:
---

在这里写你的正文内容...
```

### Front Matter 参数说明

| 参数 | 说明 | 示例 |
|------|------|------|
| `title` | 文章标题 | `"我的第一篇文章"` |
| `date` | 发布日期 | `2026-02-25` |
| `draft` | 草稿状态，`true` 时不会出现在正式构建中 | `false` |
| `description` | 文章摘要，显示在首页列表卡片中 | `"这是一篇关于..."` |
| `tags` | 标签列表 | `["Hugo", "教程"]` |
| `categories` | 分类列表 | `["技术"]` |
| `image` | 文章封面图（放在文章同目录下） | `cover.jpg` |
| `slug` | 自定义 URL 路径 | `"my-first-post"` |

### 添加文章封面图

将图片放在文章目录下，并在 front matter 中指定 `image`：

```
content/post/my-post/
├── index.md         # 文章内容
├── cover.jpg        # 封面图
└── screenshot.png   # 文章内引用的图片
```

```yaml
---
title: "带封面的文章"
image: cover.jpg
---
```

### 文章内引用图片

将图片放在文章同目录下，用相对路径引用：

```markdown
![截图说明](screenshot.png)
```

### 使用 `<!--more-->` 控制摘要

在文章中插入 `<!--more-->` 标记，标记前的内容会作为首页列表卡片的摘要：

```markdown
这段话会显示在首页列表中作为摘要。

<!--more-->

这段话只有点进文章后才能看到。
```

---

## 文章管理

### 目录结构

```
content/
├── _index.md                    # 首页配置
├── post/                        # 所有博客文章
│   ├── hello-world/
│   │   └── index.md
│   └── my-second-post/
│       ├── index.md
│       └── cover.jpg
└── page/                        # 独立页面
    ├── about/index.md           # 关于页
    ├── archives/index.md        # 归档页
    └── search/index.md          # 搜索页
```

### 草稿管理

- `draft: true` → 文章不会出现在正式构建中
- 本地预览草稿：`hugo server -D`（`-D` 参数会包含草稿）
- 正式发布：将 `draft` 改为 `false` 或直接删除 `draft` 行

### 删除文章

直接删除对应的文章目录即可，例如：`rm -rf content/post/hello-world/`

---

## 站点配置

配置文件位于 `config/_default/` 目录：

| 文件 | 用途 |
|------|------|
| `hugo.yaml` | 站点基础配置（URL、标题、语言等） |
| `params.yaml` | 主题参数（侧边栏、头像、评论、小组件等） |
| `markup.yaml` | Markdown 渲染设置（代码高亮、目录、数学公式等） |
| `menu.yaml` | 社交链接和自定义导航菜单 |
| `related.yaml` | 相关文章推荐设置 |

### 修改站点信息

编辑 `config/_default/hugo.yaml`：

```yaml
title: "Dan_Zai"
baseURL: "https://danzai233.github.io/"
```

### 修改侧边栏

编辑 `config/_default/params.yaml`：

```yaml
sidebar:
  emoji: "🌸"
  subtitle: "你的副标题"
  avatar: "img/avatar.png"     # 头像图片路径（相对于 assets/）
```

### 修改社交链接

编辑 `config/_default/menu.yaml` 中的 `social` 部分。

### 自定义样式

编辑 `assets/scss/custom.scss` 来覆盖主题默认样式（颜色、背景等）。

---

## 自定义主题

### 更换背景图片

1. 将新图片**同时**放到 `assets/img/background.jpg` 和 `static/img/background.jpg`
2. 背景图路径在 `assets/scss/custom.scss` 的 `body` 样式中引用

### 更换头像

1. 将新图片**同时**放到 `assets/img/avatar.png` 和 `static/img/avatar.png`
2. 确保 `config/_default/params.yaml` 中 `sidebar.avatar` 指向正确路径

### 添加自定义图标

将 SVG 图标放到 `assets/icons/` 目录，在 `menu.yaml` 中通过 `params.icon` 引用（不含 `.svg` 后缀）。

---

## 部署

### GitHub Actions 自动部署

每次推送到 `main` 分支会自动触发 Hugo 构建，并将产物部署到 `gh-pages` 分支。

**首次部署需要设置 GitHub Pages 源（只需做一次）：**

1. 进入仓库 **Settings** → **Pages**
2. **Source** 选择 **Deploy from a branch**
3. **Branch** 选择 `gh-pages`，路径选 `/ (root)`
4. 点击 **Save**

之后每次推送到 `main`，站点会在 1-2 分钟内自动更新。

### 手动构建

```bash
hugo --gc --minify
# 构建产物输出到 public/ 目录
```

---

## 完整工作流示例

从创建文章到上线的完整流程：

```bash
# 1. 创建新文章
hugo new content post/my-article/index.md

# 2. 编辑文章内容，设置 draft: false
#    （用你喜欢的编辑器打开 content/post/my-article/index.md）

# 3. 本地预览
hugo server -D

# 4. 确认无误后提交并推送
git add .
git commit -m "发布新文章：my-article"
git push origin main

# 5. 等待 1-2 分钟，GitHub Actions 自动构建部署
#    访问 https://danzai233.github.io/ 查看
```

---

## 常用命令速查

| 命令 | 用途 |
|------|------|
| `hugo server -D` | 启动开发服务器（含草稿） |
| `hugo server` | 启动开发服务器（不含草稿） |
| `hugo new content post/<名称>/index.md` | 创建新文章 |
| `hugo --gc --minify` | 生产构建 |
| `git submodule update --init --recursive` | 拉取/更新主题 |

---

## 许可证

[MIT License](LICENSE)
