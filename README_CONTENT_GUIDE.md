# 学术主页维护完整教程

> 作者：Fuer Yang · 站点：https://fueryang0624.github.io/  
> 适用对象：你自己（无需编程背景也可按步骤修改）

---

## 目录

1. [本地预览与常见问题](#1-本地预览与常见问题)
2. [一键发布到网上](#2-一键发布到网上)
3. [网站结构地图](#3-网站结构地图)
4. [修改个人信息](#4-修改个人信息)
5. [修改首页](#5-修改首页)
6. [修改 About / Research / CV / Contact 页面](#6-修改-about--research--cv--contact-页面)
7. [添加或修改论文](#7-添加或修改论文)
8. [添加或修改研究项目](#8-添加或修改研究项目)
9. [写博客笔记](#9-写博客笔记)
10. [更换头像与 CV](#10-更换头像与-cv)
11. [修改导航菜单](#11-修改导航菜单)
12. [修改配色与字体](#12-修改配色与字体)
13. [文件说明：哪些能删、哪些不能动](#13-文件说明哪些能删哪些不能动)

---

## 1. 本地预览与常见问题

### 正确启动方式

```bash
cd /Users/fueryang/Code/MyAcademicWeb
pnpm install          # 第一次或更新依赖后
pnpm run dev          # 启动本地服务器
```

### 终端里那些 WARN 是什么？

| 提示 | 含义 | 要不要管 |
|------|------|----------|
| `deprecated: .Site.LanguageCode` | Hugo 新版本弃用旧 API | 可忽略，不影响使用 |
| `embed shortcode: failed to fetch` | 某篇旧博客引用了外网 API | 可忽略，或删除该博客 |
| `Ignored build scripts: @tailwindcss/oxide` | pnpm 未允许原生模块编译 | **已修复**：`package.json` 里已配置 `onlyBuiltDependencies` |

### 看不到页面？

1. **等构建完成**：首次约 **2–3 分钟**，必须出现：
   ```
   Web Server is available at http://localhost:1313/
   ```
2. **地址必须是**：`http://localhost:1313/`（不是 https，不是别的端口）
3. **不要关掉终端**：`pnpm run dev` 运行期间终端要一直开着
4. 若仍空白：按 `Ctrl+C` 停止，再执行 `pnpm install` 后重新 `pnpm run dev`

`pnpm run dev` 在 macOS 上会在服务就绪后**自动打开浏览器**。

---

## 2. 一键发布到网上

### 方式 A：脚本（推荐）

```bash
pnpm run deploy
```

按提示确认后，会 `git commit` + `git push` 到 `main`，GitHub Actions 自动部署。

### 方式 B：手动

```bash
git add -A
git commit -m "更新网站内容"
git push origin main
```

### 首次上线检查清单

1. GitHub 仓库 → **Settings** → **Pages** → Build and deployment → Source 选 **GitHub Actions**
2. 推送后打开 **Actions** 标签，等待 `Deploy website to GitHub Pages` 变绿
3. 访问 https://fueryang0624.github.io/

### 修改域名 / baseURL

编辑 `config/_default/hugo.yaml` 中的 `baseURL`（若用自定义域名需同步改）。

---

## 3. 网站结构地图

```
MyAcademicWeb/
├── data/authors/me.yaml       ← 【最重要】你的个人档案
├── content/
│   ├── _index.md              ← 首页（Hero、新闻、精选论文等）
│   ├── about/index.md         ← 关于页
│   ├── research/index.md      ← 研究页
│   ├── publications/          ← 论文列表 + 各篇论文子文件夹
│   ├── projects/              ← 项目
│   ├── blog/                  ← 博客
│   ├── cv/index.md            ← 在线简历
│   └── contact/index.md       ← 联系页
├── config/_default/
│   ├── params.yaml            ← 站点主题、SEO、页脚
│   └── menus.yaml             ← 顶部导航
├── assets/
│   ├── css/custom.css         ← 自定义样式
│   └── media/authors/me.png   ← 头像
├── static/uploads/resume.pdf  ← CV 文件
├── data/themes/academic-ocean.yaml  ← 配色方案
├── deploy.sh                  ← 一键发布脚本
└── package.json               ← pnpm 脚本（dev / build / deploy）
```

**不要删除**：`go.mod`、`go.sum`、`hugoblox.yaml`、`netlify.toml`（若用 Netlify）、`config/`、`_vendor/`（本地生成，已在 .gitignore）。

---

## 4. 修改个人信息

**文件**：`data/authors/me.yaml`

| 字段 | 作用 |
|------|------|
| `name.display` / `name.alternate` | 英文名 / 中文名 |
| `role` | 职位一行话（首页 Hero 下显示） |
| `bio` | 个人简介（支持 Markdown，可中英混写） |
| `affiliations` | 单位 |
| `links` | 邮箱、Google Scholar、GitHub 等 |
| `interests` | 研究兴趣标签 |
| `education` | 教育经历 |
| `experience` | 工作/科研经历 |
| `skills` | 技能条 |
| `awards` | 奖项 |
| `languages` | 语言能力 |

### 示例：改邮箱

```yaml
links:
  - icon: at-symbol
    url: mailto:你的新邮箱@example.com
    label: Email
```

### 示例：改 Google Scholar

```yaml
  - icon: academicons/google-scholar
    url: https://scholar.google.com/citations?user=你的ID
    label: Google Scholar
```

保存后，若 `pnpm run dev` 在运行，保存文件会自动刷新页面。

---

## 5. 修改首页

**文件**：`content/_index.md`

首页由多个 **section（板块）** 组成，每个板块有 `block:` 类型：

| 板块 | block 类型 | 改什么 |
|------|------------|--------|
| Hero 个人介绍 | `resume-biography-3` | `content.text`、`content.button` |
| 下载 CV / 看研究 | `cta-button-list` | `content.buttons` |
| 最新动态 | `markdown` | `content.text` 里的 HTML 列表 |
| 研究速览 | `markdown` | 三张卡片 HTML |
| 精选论文 | `collection` | `featured_only: true`，篇数在 `count` |
| 精选项目 | `collection` | 同上 |
| 博客预览 | `collection` | `page_type: blog`、`count: 3` |
| 短简介 | `markdown` | 两段文字 |
| 联系摘要 | `markdown` | 邮箱与单位 |

### 改「最新动态」

找到 `id: news` 的 section，编辑 `<ul class="academic-news-list">` 里的条目，例如：

```html
<li><span class="academic-news-date">[2026.03]</span> 论文被 <strong>Journal of Geophysics</strong> 接收。</li>
```

### 某篇论文要出现在首页「精选」

到该论文的 `content/publications/xxx/index.md`，设置：

```yaml
featured: true
```

---

## 6. 修改 About / Research / CV / Contact 页面

| 页面 | 文件 |
|------|------|
| About | `content/about/index.md` |
| Research | `content/research/index.md` |
| CV | `content/cv/index.md` |
| Contact | `content/contact/index.md` |

结构与首页类似，由 `sections:` 列表组成。常用 block：

- `resume-biography-3` — 简介
- `resume-experience` — 经历时间线
- `resume-skills` / `resume-awards` / `resume-languages`
- `research-areas` — 研究方向卡片（见 research 页）
- `contact-info` — 联系信息
- `markdown` — 自由 Markdown/HTML

Research 页的三个方向在 `research-areas` → `content.items` 里改 `name`、`description`、`topics`。

---

## 7. 添加或修改论文

### 论文列表页

`content/publications/_index.md` — 一般只需改标题说明，列表自动从子文件夹生成。

### 新增一篇论文

```bash
mkdir -p content/publications/my-paper-2026
```

创建 `content/publications/my-paper-2026/index.md`：

```yaml
---
title: "你的论文标题"
authors:
  - me
  - 合作者英文名
date: "2026-01-15T00:00:00Z"
publishDate: "2026-01-15T00:00:00Z"
publication_types: ["article-journal"]   # 期刊
# publication_types: ["paper-conference"]  # 会议
# publication_types: ["article"]           # 预印本
publication: "*Journal Name*, 12(3)"
summary: 一句话摘要
featured: true   # 是否首页精选
links:
  - type: pdf
    url: https://...
  - type: code
    url: https://github.com/...
---

正文可写补充说明（可选）。
```

### BibTeX

在同目录放 `cite.bib`，页面上可一键引用（HugoBlox 内置）。

### 删除示例论文

删除整个文件夹即可，例如：

```bash
rm -rf content/publications/journal-article
```

---

## 8. 添加或修改研究项目

**目录**：`content/projects/项目文件夹名/index.md`

```yaml
---
title: 项目标题
date: 2026-01-01
featured: true
tags:
  - InSAR
summary: 卡片上显示的短描述
links:
  - type: site
    url: https://github.com/...
---

详细描述（<!--more--> 之后为详情页正文）。
```

**封面图**：在同目录放 `featured.jpg` 或 `featured.png`。

---

## 9. 写博客笔记

```bash
mkdir -p content/blog/my-new-post
```

`content/blog/my-new-post/index.md`：

```yaml
---
title: 笔记标题
date: 2026-05-17
tags:
  - InSAR
summary: 列表页摘要
---

正文 Markdown...
```

列表页配置在 `content/blog/_index.md`（`view: article-grid`）。

---

## 10. 更换头像与 CV

| 资源 | 路径 | 要求 |
|------|------|------|
| 头像 | `assets/media/authors/me.png` | 建议正方形，≥400×400 |
| CV | `static/uploads/resume.pdf` | PDF，替换文件即可 |

首页「Download CV」按钮链接到 `/uploads/resume.pdf`。

---

## 11. 修改导航菜单

**文件**：`config/_default/menus.yaml`

```yaml
main:
  - name: About
    url: /about/
    weight: 10    # 数字越小越靠左
```

增删菜单项后保存即可。

---

## 12. 修改配色与字体

| 改什么 | 文件 |
|--------|------|
| 主色 / 背景 | `data/themes/academic-ocean.yaml` |
| 主题开关、搜索、页脚 | `config/_default/params.yaml` → `hugoblox.theme` |
| 字体、行距、卡片圆角 | `assets/css/custom.css` |
| Google Fonts 链接 | `layouts/_partials/hooks/head-end/fonts.html` |

改 CSS 后刷新浏览器；若样式没变，重启 `pnpm run dev`。

---

## 13. 文件说明：哪些能删、哪些不能动

### 已为你删除的模板垃圾（勿恢复）

- `content/courses/` — HugoBlox 官方教程
- `content/events/`、`content/slides/` — 示例
- `content/blog/geoscience-figures/`、`experiment-notebook/` — 含外网依赖的示例
- `SETUP_COMPLETE.md`、`package-lock.json`（用 pnpm 即可）

### 不要提交到 Git 的（已在 .gitignore）

- `public/` — 构建输出
- `resources/` — Hugo 缓存
- `node_modules/`
- `_vendor/` — 本地模块副本

### 不要删除

- `go.mod` / `go.sum` — Hugo 模块
- `hugoblox.yaml` — 模板版本
- `.npmrc` — 保证 Tailwind 能编译
- `.github/workflows/deploy.yml` — 自动部署

---

## 附录：常用命令

```bash
pnpm install      # 安装依赖
pnpm run dev      # 本地预览
pnpm run build    # 本地生产构建（输出到 public/）
pnpm run deploy   # 提交并推送，触发线上更新
```

---

## 需要帮助时

1. 先确认终端是否显示 `Web Server is available at http://localhost:1313/`
2. 看 GitHub **Actions** 是否部署失败（红点）
3. 改内容优先动 `data/authors/me.yaml` 和 `content/` 下对应 Markdown

祝科研顺利。
