---
title: ''
summary: 'Fuer Yang | 地球物理 · InSAR · 同震形变 · 活动构造'
date: 2026-05-22
type: landing

design:
  spacing: '3.5rem'

sections:
  # ── Hero ──
  - block: resume-biography-3
    id: about
    content:
      username: me
      text: |-
        聚焦于 InSAR 同震形变观测与断层滑动反演，结合地球物理建模与卫星遥感数据，探究地球内部构造与地表变形过程，致力于通过地球物理方法理解和预测自然灾害。
      button:
        text: 下载简历
        url: uploads/resume.pdf
      headings:
        about: ' '
        education: 教育背景
        interests: 研究兴趣
    design:
      css_class: ac-hero
      background:
        gradient_mesh:
          enable: true
      name:
        size: lg
      avatar:
        size: xxl
        shape: square

  # ── Research Directions ──
  - block: markdown
    id: research
    content:
      title: 研究方向
      subtitle: ''
      text: |-
        <div class="ac-research-grid ac-research-4col">
          <div class="ac-research-card">
            <div class="ac-card-icon">&#x1F4E1;</div>
            <h3>InSAR 时序分析</h3>
            <p>利用时序 InSAR 技术提取地表形变信息，监测地壳运动和构造活动。</p>
          </div>
          <div class="ac-research-card">
            <div class="ac-card-icon">&#x1F30B;</div>
            <h3>同震形变反演</h3>
            <p>基于弹性半空间模型反演断层滑动分布，研究强震同震过程。</p>
          </div>
          <div class="ac-research-card">
            <div class="ac-card-icon">&#x26F0;&#xFE0F;</div>
            <h3>活动构造研究</h3>
            <p>结合地质与地球物理数据，分析活动断层特征与构造演化。</p>
          </div>
          <div class="ac-research-card">
            <div class="ac-card-icon">&#x1F9E9;</div>
            <h3>断层力学建模</h3>
            <p>建立断层力学模型，探索断层破裂机制与应力演化过程。</p>
          </div>
        </div>
    design:
      columns: '1'
      css_class: ac-narrow

  # ── Latest News ──
  - block: markdown
    id: news
    content:
      title: 最新动态
      subtitle: ''
      text: |-
        <ul class="ac-news-list">
          <li><span class="ac-news-date">2026.09</span>入学南方科技大学地空系，开始博士阶段学习</li>
          <li><span class="ac-news-date">2025.06</span>中山大学构造地质学硕士毕业</li>
          <li><span class="ac-news-date">2022.06</span>兰州大学地质学学士毕业</li>
        </ul>
    design:
      columns: '1'
      css_class: ac-narrow

  # ── Skills & Tools ──
  - block: markdown
    id: skills
    content:
      title: 技能与工具
      subtitle: ''
      text: |-
        <div class="ac-skills-grid">
          <div class="ac-skills-group">
            <h4>编程语言</h4>
            <ul>
              <li>Python (NumPy, Matplotlib, SciPy)</li>
              <li>MATLAB</li>
              <li>Shell / Bash</li>
              <li>LaTeX</li>
            </ul>
          </div>
          <div class="ac-skills-group">
            <h4>专业软件</h4>
            <ul>
              <li>GMTSAR / ISCE / MintPy</li>
              <li>GMT (Generic Mapping Tools)</li>
              <li>QGIS / ArcGIS</li>
              <li>SAR 数据处理工具链</li>
            </ul>
          </div>
          <div class="ac-skills-group">
            <h4>研究方法</h4>
            <ul>
              <li>InSAR 时序分析</li>
              <li>断层滑动反演</li>
              <li>构造地貌分析</li>
              <li>野外地质调查</li>
            </ul>
          </div>
          <div class="ac-skills-group">
            <h4>工作流</h4>
            <ul>
              <li>Git 版本控制</li>
              <li>Linux 服务器</li>
              <li>科学写作 (中/英)</li>
              <li>数据可视化</li>
            </ul>
          </div>
        </div>
    design:
      columns: '1'
      css_class: ac-narrow

  # ── Publications ──
  - block: collection
    id: papers
    content:
      title: 论文发表
      text: |-
        暂无正式发表论文，博士期间将持续更新。
      filters:
        folders:
          - publications
        featured_only: true
      count: 3
    design:
      view: article-grid
      columns: 3
      css_class: ac-narrow

  # ── Blog / Notes ──
  - block: collection
    id: blog
    content:
      title: 学习笔记
      subtitle: 记录科研过程中的学习与思考
      page_type: blog
      count: 3
      filters:
        exclude_featured: false
        exclude_future: true
      order: desc
    design:
      view: card
      css_class: ac-narrow

  # ── Contact ──
  - block: markdown
    id: contact
    content:
      title: 联系方式
      subtitle: ''
      text: |-
        <div class="ac-contact-grid">
          <div>
            <p class="ac-label">Email</p>
            <p><a href="mailto:yangfe024@gmail.com">yangfe024@gmail.com</a></p>
          </div>
          <div>
            <p class="ac-label">单位</p>
            <p>南方科技大学 地球与空间科学系<br/>广东省深圳市南山区学苑大道 1088 号</p>
          </div>
          <div>
            <p class="ac-label">微信 / 电话</p>
            <p>WeChat: YFE0624<br/>Tel: 17339838808</p>
          </div>
          <div>
            <p class="ac-label">学术主页</p>
            <p><a href="https://scholar.google.com/citations?user=FidaXbUAAAAJ">Google Scholar</a><br/><a href="https://www.researchgate.net/profile/Fuer-Yang">ResearchGate</a><br/><a href="https://github.com/fueryang0624">GitHub</a></p>
          </div>
        </div>
    design:
      columns: '1'
      css_class: ac-narrow
---
