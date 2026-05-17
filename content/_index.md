---
title: ''
summary: 'Fuer Yang | Geophysics · InSAR · Crustal deformation · Active tectonics'
date: 2026-05-17
type: landing

design:
  spacing: '4rem'

sections:
  # ── Hero: biography, interests, education, social links ──
  - block: resume-biography-3
    id: about
    content:
      username: me
      text: |-
        I investigate crustal deformation and earthquake mechanics through **satellite geodesy**, geological fieldwork, and computational modeling.

        My work centers on **InSAR time-series analysis**, linking surface displacement to fault slip and regional tectonic loading. I care about reproducible geoscience — workflows that others can verify and extend.

        本主页是我的学术名片：论文、项目、学习笔记与科研动态。欢迎未来导师、合作者与同行交流。
      button:
        text: Download CV
        url: uploads/resume.pdf
      headings:
        about: ' '
        education: Education
        interests: Research Interests
    design:
      css_class: academic-hero
      background:
        gradient_mesh:
          enable: true
      name:
        size: lg
      avatar:
        size: xxl
        shape: circle

  # ── CTA row ──
  - block: cta-button-list
    content:
      buttons:
        - text: Download CV
          url: uploads/resume.pdf
          icon: document-arrow-down
        - text: View Research
          url: /research/
          icon: academic-cap
    design:
      css_class: academic-cta-row

  # ── Latest news ──
  - block: markdown
    id: news
    content:
      title: Latest News
      subtitle: Research updates and milestones
      text: |-
        <ul class="academic-news-list">
          <li><span class="academic-news-date">[2026.01]</span> Started Ph.D. in Geophysics at <strong>SUSTech</strong>.</li>
          <li><span class="academic-news-date">[2025.06]</span> Completed M.Sc. in Geology at <strong>Sun Yat-sen University</strong>.</li>
          <li><span class="academic-news-date">[2025.10]</span> Conference presentation placeholder on <em>InSAR constraints on active fault deformation</em> — update with venue when confirmed.</li>
          <li><span class="academic-news-date">[2024.12]</span> <em>Template:</em> Paper accepted at [Venue] — replace when you have a real acceptance.</li>
        </ul>
    design:
      columns: '1'
      css_class: academic-section-narrow

  # ── Research snapshot (links to full page) ──
  - block: markdown
    id: research-preview
    content:
      title: Research Focus
      subtitle: Satellite geodesy · active tectonics · reproducible workflows
      text: |-
        <div class="academic-focus-grid">
          <section class="academic-focus-card">
            <p class="academic-kicker">01 / Observation</p>
            <h3>InSAR Time-Series</h3>
            <p>Reliable deformation signals from SAR — atmospheric correction, unwrapping, and uncertainty.</p>
          </section>
          <section class="academic-focus-card">
            <p class="academic-kicker">02 / Mechanism</p>
            <h3>Fault Slip & Deformation</h3>
            <p>Connecting surface displacement to subsurface slip, locking, and postseismic processes.</p>
          </section>
          <section class="academic-focus-card">
            <p class="academic-kicker">03 / Practice</p>
            <h3>Reproducible Geoscience</h3>
            <p>Open data, versioned code, and documented workflows for collaboration.</p>
          </section>
        </div>
        <p class="academic-section-link"><a href="/research/">Explore full research directions →</a></p>
    design:
      columns: '1'
      css_class: academic-section-narrow

  # ── Selected publications (featured only) ──
  - block: collection
    id: papers
    content:
      title: Selected Publications
      text: Featured papers and preprints. See the [full list](/publications/) for everything.
      filters:
        folders:
          - publications
        featured_only: true
      count: 3
    design:
      view: article-grid
      columns: 3
      css_class: academic-section-narrow

  # ── Featured projects ──
  - block: collection
    id: projects
    content:
      title: Featured Projects
      text: Research themes, datasets, and code repositories.
      filters:
        folders:
          - projects
        featured_only: true
      count: 3
    design:
      view: article-grid
      fill_image: true
      columns: 3
      show_date: false
      show_read_time: false
      css_class: academic-section-narrow

  # ── Recent blog posts ──
  - block: collection
    id: blog-preview
    content:
      title: From the Notebook
      subtitle: Learning notes, workflows, and reflections
      page_type: blog
      count: 3
      filters:
        exclude_featured: false
        exclude_future: true
      order: desc
    design:
      view: card
      css_class: academic-section-narrow

  # ── Short bio ──
  - block: markdown
    content:
      title: About Me
      text: |-
        I am a geophysics Ph.D. student trained across **field geology**, **remote sensing**, and **computational modeling**. My path—from Lanzhou University (B.Sc.) to Sun Yat-sen University (M.Sc.) and now SUSTech—reflects a growing focus on quantitative deformation analysis.

        I believe good science is **transparent**: methods documented, data citable, and results reproducible. This site is where I share that work openly.

        <p class="academic-section-link"><a href="/about/">Full biography, experience & skills →</a></p>
    design:
      columns: '1'
      css_class: academic-section-narrow

  # ── Contact teaser ──
  - block: markdown
    id: contact
    content:
      title: Get in Touch
      subtitle: Collaboration, advising conversations, or shared interests in geodesy
      text: |-
        <div class="academic-contact-panel">
          <div>
            <p class="academic-kicker">Email</p>
            <p><a href="mailto:yangfe0624@gmail.com">yangfe0624@gmail.com</a></p>
          </div>
          <div>
            <p class="academic-kicker">Affiliation</p>
            <p>Southern University of Science and Technology (SUSTech)<br/>Shenzhen, China</p>
          </div>
          <div>
            <p class="academic-kicker">Profiles</p>
            <p>Google Scholar · GitHub · ORCID · LinkedIn — see icons in the hero section above.</p>
          </div>
        </div>
        <p class="academic-section-link"><a href="/contact/">Contact page →</a></p>
    design:
      columns: '1'
      css_class: academic-section-narrow
---
