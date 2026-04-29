---

title: "中之我 Inside-ME：和过去的自己来一场灵魂对话"
description: "做了一个本地优先的「自我蒸馏」工具——导入你的聊天记录，让 AI 读懂你，然后和那个由过去堆叠而成的「你」深谈。"
keywords: ["Inside-ME", "中之我", "AI", "自我蒸馏", "Agent Skills", "开源", "Python", "React"]
date: 2026-04-16
slug: "inside-me-intro"
image: "https://raw.githubusercontent.com/DanZai233/Inside-ME/main/img_v3_0210p_6c049c7f-5094-4ec8-a4b2-75a3cf5bd08g.jpg"
tags:
    - 开源
    - AI
    - 项目介绍
    - Python
categories:
    - 技术
---

很多话你对别人说了一半，对群聊发完就撤回，在深夜文件传输助手里打满又删掉。内心深处的东西，常常没有合适的听众——除了未来的自己，和由过去的只言片语堆出来的那个「你」。

**中之我（Inside-ME）** 就是在这个念头上长出来的。

<!--more-->

## 这是什么？

> 仓库：[DanZai233/Inside-ME](https://github.com/DanZai233/Inside-ME)

简单说，这是一个**本地优先**的「自我蒸馏」工具。你把自己的聊天记录（QQ、微信、微博……）喂进去，它把你的语言习惯、情绪模式、高频表达整理成向量存进本地数据库。然后你就可以和一个**读过你所有上下文的 AI** 来回深谈——它不是随便一个聊天机器人，而是由你自己的语言材料堆出来的「中之我」。

灵感来自 [yourself-skill](https://github.com/notdog1998/yourself-skill) 和 [ex-skill](https://github.com/therealXiaomanChu/ex-skill)——前者说「与其蒸馏别人，不如蒸馏自己」，后者把同样的思路带进了亲密关系。中之我承袭了这个信念：**人的质地藏在语言里，可以被整理、被重读、被对话擦亮**。

![对话页面](https://raw.githubusercontent.com/DanZai233/Inside-ME/main/img_v3_0210p_6c049c7f-5094-4ec8-a4b2-75a3cf5bd08g.jpg)

## 核心功能

### 📊 仪表盘

把抽象的「我」拆成可见的统计：平台分布、发送者分析、相邻对话、高频词。还有画像笔记，可以手写也可以让模型辅助生成——先看见自己，再深谈。

### 📥 多平台导入

支持 QQ、微信风格、微博块和通用文本格式，导入后自动进入本地向量库（Chroma）。和 yourself-skill / ex-skill 推荐的导出格式思路一致：**先有真材料**。

### 💬 灵魂对话

这是项目的核心体验。左侧有**记忆档案**面板，你输入问题时它会实时预览检索，发送后本轮注入的内容会高亮，AI 生成时相关记忆抽屉会**逐条点亮**——你能亲眼看到哪一段旧「你」被接上了线。

流式回复、钉选记忆条目、插入输入框、预置开场白、深度访谈模式……细节不少，都是为了让这场和自己的对话尽量自然。

### ✍️ 写入记忆

每轮对话可以勾选「写入记忆」，你当下的觉悟和想法会回到向量库，和导入的记录一起参与今后的检索。真人当下的思考，也能喂给未来的中之我。

### 📦 导出 Skill

生成符合 [Agent Skills 规范](https://agentskills.io/specification) 的目录，包含 `SKILL.md` 和 `references/MEMORY.md`。导出后可以直接放进 Claude Code 的 `.claude/skills/` 目录，或者给 Cursor 等支持 Agent Skills 的环境使用。

## 技术栈

| 层 | 技术 |
|---|---|
| 后端 | Python 3.11+ / FastAPI / Chroma 向量库 |
| 前端 | React 18 + Vite + TypeScript |
| 部署 | Docker 一键部署，也支持本地 venv |
| 模型 | OpenAI 兼容端点 / 火山方舟，对话与嵌入分离配置 |

## 为什么做这个？

说到底，中之我的核心体验不是「导入数据」或「生成 Skill」这些功能点，而是那个**你坐下来、看见记忆被一条条点亮、向深处问也向深处答**的瞬间。

导入聊天记录，是承认「我已经在那里活过」；和中之我说话，是承认「我还想弄懂那个活法」。可视化不是为了好看，是为了在你追问时，看见哪一段旧我被接上线——抽屉亮起的那一刻，你同时在被提醒：**你从来不止一句人设，你是一条还在生长的轨迹**。

这个副本不会替你活人生，它只是你某次诚实面对自己时的 checkpoint。

> _深处不是没有光，只是平时没人替你照。_

---

**与其只把别人或关系蒸馏成 Skill，不如也给内心深处留一间亮着灯的房间。**

如果感兴趣，欢迎来 [GitHub](https://github.com/DanZai233/Inside-ME) 逛逛，Star ⭐ 和 Issue 都欢迎！
