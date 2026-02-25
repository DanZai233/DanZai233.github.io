# 一只小羊羔的窝 🐑

基于 [Hugo](https://gohugo.io/) + [Stack 主题](https://github.com/CaiJimmy/hugo-theme-stack) 的个人博客，通过 GitHub Actions 自动部署到 GitHub Pages。

**在线访问**: [https://danzai233.github.io/](https://danzai233.github.io/)

---

## 快速开始

### 环境要求

- [Hugo Extended](https://gohugo.io/installation/) >= 0.154.0（必须是 **extended** 版本）
- Git

### 安装 Hugo

```bash
# Linux/macOS
wget -qO- https://github.com/gohugoio/hugo/releases/download/v0.156.0/hugo_extended_0.156.0_linux-amd64.tar.gz | tar xz hugo
sudo mv hugo /usr/local/bin/

# 验证安装（输出应包含 +extended）
hugo version
```

### 克隆并运行

```bash
git clone --recursive https://github.com/DanZai233/DanZai233.github.io.git
cd DanZai233.github.io

# 如果忘了 --recursive，手动拉取主题
git submodule update --init --recursive

# 启动本地开发服务器
hugo server -D
```

浏览器打开 http://localhost:1313/ 即可预览。

---

## 发布文章

### 创建新文章

```bash
hugo new content post/my-new-post/index.md
```

这会在 `content/post/my-new-post/` 下创建 `index.md`，内容模板如下：

```yaml
---
title: "My New Post"
date: 2025-02-25T12:00:00+08:00
draft: true          # ← 设为 false 才会发布
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
| `date` | 发布日期 | `2025-02-25` |
| `draft` | 草稿状态，`true` 不会发布 | `false` |
| `description` | 文章摘要，显示在列表页 | `"这是一篇关于..."` |
| `tags` | 标签列表 | `["Hugo", "教程"]` |
| `categories` | 分类列表 | `["技术"]` |
| `image` | 文章封面图（放在同目录下） | `cover.jpg` |
| `slug` | 自定义 URL 路径 | `"my-first-post"` |

### 添加文章封面图

将图片放在文章目录下，在 front matter 中指定：

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

在文章中插入 `<!--more-->` 标记，之前的内容会作为列表页的摘要：

```markdown
这段话会显示在首页列表中作为摘要。

<!--more-->

这段话只有点进文章后才能看到。
```

---

## 文章管理

### 文章目录结构

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
- 本地预览草稿：`hugo server -D`（`-D` 参数包含草稿）
- 发布时将 `draft` 改为 `false` 或删除该行

### 删除文章

直接删除 `content/post/<文章目录>/` 即可。

---

## 站点配置

配置文件位于 `config/_default/` 目录：

| 文件 | 用途 |
|------|------|
| `hugo.yaml` | 站点基础配置（URL、标题、语言等） |
| `params.yaml` | 主题参数（侧边栏、评论、组件等） |
| `markup.yaml` | Markdown 渲染设置 |
| `menu.yaml` | 社交链接和自定义导航菜单 |
| `related.yaml` | 相关文章推荐设置 |

### 修改站点信息

编辑 `config/_default/hugo.yaml`：

```yaml
title: "你的站点名称"
baseURL: "https://your-username.github.io/"
```

### 修改侧边栏

编辑 `config/_default/params.yaml`：

```yaml
sidebar:
  emoji: "🌸"
  subtitle: "你的副标题"
  avatar: "img/avatar.png"     # 头像图片路径
```

### 修改社交链接

编辑 `config/_default/menu.yaml` 中的 `social` 部分。

### 自定义样式

编辑 `assets/scss/custom.scss` 来覆盖主题默认样式。

---

## 自定义主题

### 更换背景图片

1. 将新图片放到 `assets/img/background.jpg` 和 `static/img/background.jpg`
2. 背景图在 `assets/scss/custom.scss` 中的 `body` 样式引用

### 更换头像

1. 将新图片放到 `assets/img/avatar.png` 和 `static/img/avatar.png`
2. 确保 `config/_default/params.yaml` 中 `sidebar.avatar` 路径正确

### 添加自定义图标

将 SVG 图标放到 `assets/icons/` 目录，在 `menu.yaml` 中通过 `params.icon` 引用（不含 `.svg` 扩展名）。

---

## 部署

### GitHub Actions 自动部署

每次推送到 `main` 分支会自动触发构建并部署到 `gh-pages` 分支。

**首次部署需要设置 GitHub Pages 源：**

1. 进入仓库 **Settings** → **Pages**
2. **Source** 选择 **Deploy from a branch**
3. **Branch** 选择 `gh-pages`，路径选 `/ (root)`
4. 点击 **Save**

### 手动构建

```bash
hugo --gc --minify
# 构建产物在 public/ 目录
```

---

## 常用命令

```bash
# 启动开发服务器（包含草稿）
hugo server -D

# 启动开发服务器（不含草稿，模拟正式环境）
hugo server

# 创建新文章
hugo new content post/<文章名>/index.md

# 生产构建
hugo --gc --minify
```

---

## 许可证

[MIT License](LICENSE)
