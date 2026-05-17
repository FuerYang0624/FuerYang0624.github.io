# Fuer Yang — Academic Homepage

个人学术主页（Hugo + HugoBlox）。在线地址：**https://fueryang0624.github.io/**

## 快速开始

```bash
# 1. 安装依赖（只需一次）
pnpm install

# 2. 本地预览（首次约 2–3 分钟，完成后自动打开浏览器）
pnpm run dev
```

浏览器访问：**http://localhost:1313/**

> 终端里的 `WARN` 是 Hugo 版本弃用提示，**不是错误**。看到 `Web Server is available at http://localhost:1313/` 即表示成功。

## 一键发布到网上

```bash
pnpm run deploy
# 或
bash deploy.sh
```

推送到 `main` 分支后，GitHub Actions 自动部署到 GitHub Pages（约 2–5 分钟）。

**首次部署**需在 GitHub 仓库 Settings → Pages → Source 选择 **GitHub Actions**。

## 修改网站内容

完整教程见 **[README_CONTENT_GUIDE.md](./README_CONTENT_GUIDE.md)**（如何改个人信息、论文、博客、样式、部署等）。

## 项目结构（精简版）

| 路径 | 作用 |
|------|------|
| `data/authors/me.yaml` | 姓名、简介、教育、经历、社交链接 |
| `content/_index.md` | 首页各板块 |
| `content/about/` `research/` `publications/` `blog/` `cv/` `contact/` | 各页面 |
| `content/publications/*/` | 单篇论文 |
| `content/projects/*/` | 研究项目 |
| `content/blog/*/` | 博客笔记 |
| `config/_default/params.yaml` | 主题、导航、SEO |
| `config/_default/menus.yaml` | 顶部菜单 |
| `assets/css/custom.css` | 自定义样式 |
| `assets/media/authors/me.png` | 头像 |
| `static/uploads/resume.pdf` | CV 下载 |

## 技术栈

Hugo · HugoBlox · Tailwind CSS v4 · GitHub Pages
