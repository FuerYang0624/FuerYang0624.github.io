# 🛰️ 个人学术网站内容维护指南

这是一份快速参考指南，帮助你轻松添加和管理网站内容。

---

## 📝 快速开始：5分钟添加一篇博客

### 第1步：创建文件夹
```bash
mkdir -p content/blog/your-blog-title
```

### 第2步：创建 `index.md` 文件
```bash
cat > content/blog/your-blog-title/index.md << 'EOF'
---
title: "My First Research Note"
authors:
  - me
date: 2026-05-16
tags:
  - InSAR
  - Learning
summary: "A brief summary of what this note is about."
image:
  caption: "Optional image caption"
  focal_point: "Smart"
---

## Your content starts here

This is a regular Markdown file. Write freely!

- Use bullet points
- Add code blocks
- Include equations if needed: $E = mc^2$

```python
# Add code examples
import numpy as np
arr = np.array([1, 2, 3])
```
EOF
```

### 第3步：本地测试
```bash
hugo server
```
打开 http://localhost:1313 查看效果。

---

## 📚 添加学术论文/出版物

### 期刊文章
```bash
mkdir -p content/publications/my-journal-paper
```

编辑 `content/publications/my-journal-paper/index.md`：

```yaml
---
title: "Title of Your Journal Article"
authors: [me, "John Smith", "Jane Doe"]
date: "2025-06-01T00:00:00Z"
publication_types: ["article-journal"]
publication: "*Journal Name*, Vol. 123, No. 4, pp. 456-789"
abstract: |
  Write your abstract here. It can span multiple paragraphs.
  
  Keep it concise and informative.

tags:
  - InSAR
  - Fault Slip
featured: true  # Set to true to highlight on homepage

hugoblox:
  ids:
    arxiv: "2312.12345v1"  # Optional: arXiv ID
    doi: "10.1234/journal.2025.12345"

links:
  - name: "PDF"
    url: "https://doi.org/10.1234/journal.2025.12345"
    icon_pack: "fas"
    icon: "file-pdf"
  - name: "arXiv"
    url: "https://arxiv.org/abs/2312.12345"
    icon_pack: "ai"
    icon: "arxiv"
  - name: "Code"
    url: "https://github.com/yourname/paper-code"
    icon_pack: "fab"
    icon: "github"

projects:
  - insar-time-series  # Link to a related project
---

Optional: Write a brief summary or context for the paper here.
```

### 会议论文 / 预印本
只需改变 `publication_types`：
- 会议论文：`publication_types: ["paper-conference"]`
- 预印本：`publication_types: ["article"]`

---

## 🔬 添加研究项目

```bash
mkdir -p content/projects/my-research-project
```

编辑 `content/projects/my-research-project/index.md`：

```yaml
---
title: "InSAR Time-Series Analysis in Daqing Fault"
authors: [me]
date: 2026-05-01
image:
  caption: "Time-series displacement map"
  focal_point: Smart
summary: "Mapping interseismic deformation across the Daqing fault using 5+ years of Sentinel-1 data."

links:
  - icon: github
    icon_pack: fab
    name: Code Repository
    url: 'https://github.com/yourname/daqing-insar'
  - icon: database
    icon_pack: fas
    name: Dataset
    url: 'https://zenodo.org/yourdata'
  - icon: file-pdf
    icon_pack: fas
    name: Methods
    url: 'https://example.com/methods.pdf'

tags:
  - InSAR
  - Sentinel-1
  - Active Tectonics
  - China
---

## Project Overview
Clear description of your project.

## Key Results
- Result 1
- Result 2

## Data & Code
All data and processing scripts are available on GitHub (see links above).
```

---

## 🗣️ 添加演讲/演示

```bash
mkdir -p content/events/my-talk
```

编辑 `content/events/my-talk/index.md`：

```yaml
---
title: "Crustal Deformation in the Tibetan Plateau"
authors: [me]
date: 2025-11-15
time_start: "14:00:00"
time_end: "14:45:00"
all_day: false
location: "Auditorium, SUSTech"
event: "Geophysics Seminar"
event_url: "https://www.sustech.edu.cn/events"

summary: "An overview of current deformation patterns in the Tibetan Plateau."
image:
  caption: "Study region map"
  focal_point: Smart
---

## Talk Summary
Your talk description and outline here.
```

---

## 🔧 常见问题与快速解决

### Q1: 如何更新社交媒体链接？

编辑 **`data/authors/me.yaml`**，找到 `links:` 部分：

```yaml
links:
  - icon: academicons/google-scholar
    url: "https://scholar.google.com/citations?user=YOUR_ID_HERE"
    label: Google Scholar
  - icon: brands/github
    url: "https://github.com/yourname"
    label: GitHub
  - icon: brands/bilibili
    url: "https://space.bilibili.com/YOUR_ID"
    label: Bilibili
  - icon: brands/douyin
    url: "https://www.douyin.com/@yourhandle"
    label: Douyin
```

微信是特殊的（没有链接），只显示你的微信ID：
```yaml
  - icon: brands/weixin
    url: /#
    label: "WeChat: yourwechatiD"
```

### Q2: 如何更新我的简介和经历？

编辑 **`data/authors/me.yaml`**：

```yaml
role: "Ph.D. Student in Geophysics"  # Your current position

bio: |
  Multi-line biography goes here.
  It supports Markdown formatting.
  Keep it professional but personal.

affiliations:
  - name: "Southern University of Science and Technology (SUSTech)"
    url: "https://www.sustech.edu.cn/"

education:
  - degree: "Ph.D. in Geophysics"
    institution: "SUSTech"
    start: 2026-01-01
    summary: |
      Your PhD focus area and advisor info.

experience:
  - role: "Graduate Research Assistant"
    org: "SUSTech"
    start: 2026-01-01
    summary: |
      What you're working on.
```

### Q3: 如何更新我的简历（CV）？

1. 准备一份PDF格式的简历
2. 放在 `static/uploads/resume.pdf`
3. 首页的"Download CV"按钮会自动链接到这个文件

### Q4: 如何设置某篇文章在首页突出显示？

添加 `featured: true` 到你的YAML front matter：

```yaml
---
title: "My Important Paper"
featured: true  # 这会让它显示在"Selected Publications"部分
---
```

### Q5: 如何添加标签/分类？

在任何内容的YAML front matter中：

```yaml
tags:
  - InSAR
  - Active Tectonics
  - Data Analysis

categories:
  - Research
  - Methods
```

---

## 📁 文件结构速查表

```
content/
├── _index.md              ← 首页配置（不要随意改动）
├── blog/                  ← 学习笔记、研究日志
│   ├── my-first-note/index.md
│   ├── paper-reading-notes/index.md
│   └── ...
├── publications/          ← 学术出版物
│   ├── journal-article/index.md
│   ├── conference-paper/index.md
│   └── ...
├── projects/              ← 研究项目
│   ├── insar-project/index.md
│   └── ...
└── events/                ← 演讲和演示
    └── my-talk/index.md

data/
└── authors/
    └── me.yaml            ← 你的个人信息（最常用！）

config/_default/
├── params.yaml            ← 网站配置
├── menus.yaml             ← 导航菜单
└── languages.yaml         ← 语言设置

assets/
└── css/
    └── custom.css         ← 自定义样式

static/
└── uploads/
    └── resume.pdf         ← 你的简历

themes/hugo-blox/          ← 主题文件（不要修改）
```

---

## 🚀 长期维护建议

### 月度维护
- [ ] 添加1-2篇学习笔记
- [ ] 检查所有链接是否有效
- [ ] 更新任何过时的信息

### 季度维护
- [ ] 审查研究方向描述是否仍然准确
- [ ] 更新项目状态
- [ ] 检查CV是否需要更新

### 年度维护
- [ ] 更新教育背景（新学位）
- [ ] 更新工作经历
- [ ] 审视整体网站设计和内容组织

### 论文发表后
- [ ] 立即添加到 Publications 部分
- [ ] 更新对应的项目页面
- [ ] 发表一篇短博客总结关键发现

---

## 📖 Markdown语法快速参考

```markdown
# 一级标题
## 二级标题
### 三级标题

**粗体** 和 *斜体*

- 无序列表项1
- 无序列表项2

1. 有序列表项1
2. 有序列表项2

[链接文本](https://example.com)

![图片说明](image.jpg)

> 引用文本

\`\`\`python
# 代码块
print("Hello World")
\`\`\`

|列1|列2|
|-|-|
|单元格1|单元格2|

数学公式：$E=mc^2$ 或 $$\int_0^\infty e^{-x}dx = 1$$
```

---

## 🆘 需要帮助？

- Hugo Blox 官方文档：https://docs.hugoblox.com/
- Markdown 指南：https://www.markdownguide.org/
- 网站部署和GitHub Pages：https://docs.hugoblox.com/getting-started/deployment/

---

## 💡 最佳实践

1. **保持内容一致**：定期发布新笔记（月度为佳）
2. **链接验证**：确保所有外部链接有效
3. **版本控制**：使用 Git 跟踪所有变化
4. **备份CV**：保持简历的最新版本
5. **实事求是**：只发布你确信正确的信息
6. **风格统一**：参考已有的文章保持格式一致

---

祝你的学术网站运营顺利！🎓

