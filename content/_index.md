---
title: ''
summary: 'Fuer Yang | Geophysics researcher specializing in InSAR, crustal deformation, and reproducible geoscience'
date: 2026-05-16
type: landing

design:
  spacing: '4rem'

sections:
  # Hero: About & Biography
  - block: resume-biography-3
    id: about
    content:
      username: me
      text: |-
        I investigate crustal deformation and earthquake mechanics through satellite geodesy, geological fieldwork, and computational modeling.
        
        This site is my academic home: research updates, publications, projects, and a public learning notebook where I share workflows, study notes, and reflections on science and learning.
      button:
        text: Download CV
        url: uploads/resume.pdf
      headings:
        about: About Me
        education: Education
        interests: Research Interests
    design:
      background:
        gradient_mesh:
          enable: true
      name:
        size: lg
      avatar:
        size: large
        shape: circle

  # Research Focus: 3-column layout
  - block: markdown
    id: research
    content:
      title: Research Focus
      subtitle: Satellite geodesy, active tectonics, and earthquake-related deformation
      text: |-
        <div class="academic-focus-grid">
          <section class="academic-focus-card">
            <p class="academic-kicker">01 / OBSERVATION</p>
            <h3>InSAR Time-Series Analysis</h3>
            <p>Extracting reliable deformation signals from SAR data, accounting for atmospheric noise, topographic errors, phase unwrapping artifacts, and uncertainty quantification.</p>
          </section>
          <section class="academic-focus-card">
            <p class="academic-kicker">02 / MECHANISM</p>
            <h3>Fault Slip & Crustal Deformation</h3>
            <p>Linking observed surface displacement to subsurface slip, interseismic locking, postseismic relaxation, and regional tectonic loading patterns.</p>
          </section>
          <section class="academic-focus-card">
            <p class="academic-kicker">03 / PRACTICE</p>
            <h3>Reproducible Geoscience</h3>
            <p>Organizing data, code, figures, and notes so that results can be verified, extended, and built upon by collaborators and future researchers.</p>
          </section>
        </div>

        <div class="academic-note-strip">
          <strong>Current research direction:</strong> Update this with your dissertation topic, target region, or primary dataset as your focus solidifies.
        </div>
    design:
      columns: '1'

  # Academic Profile: Quick Overview
  - block: markdown
    id: profile
    content:
      title: Academic Profile
      subtitle: For prospective advisors, collaborators, and curious researchers
      text: |-
        <div class="academic-profile-grid">
          <div>
            <p class="academic-kicker">Training</p>
            <p><strong>Geology & Geophysics</strong> across Lanzhou University, Sun Yat-sen University, and SUSTech. Foundational work in field geology, remote sensing, and quantitative analysis.</p>
          </div>
          <div>
            <p class="academic-kicker">Technical Skills</p>
            <p><strong>Python, MATLAB, GMT, Shell</strong> | <strong>GMTSAR, ISCE/MintPy, GAMMA</strong> | Git-based reproducible workflows, scientific computing, and data visualization.</p>
          </div>
          <div>
            <p class="academic-kicker">Collaboration</p>
            <p>Open to discussions on <strong>InSAR processing, active tectonics, earthquake deformation modeling, and reproducible research practices</strong>.</p>
          </div>
          <div>
            <p class="academic-kicker">中文简介</p>
            <p>本主页展示科研经历、出版物、项目、学习笔记。欢迎未来导师、同学和合作者了解我的科研方向和学习风格。</p>
          </div>
        </div>
    design:
      columns: '1'

  # Featured Publications
  - block: collection
    id: papers
    content:
      title: Selected Publications
      text: Peer-reviewed journal papers, conference contributions, and preprints.
      filters:
        folders:
          - publications
        featured_only: true
    design:
      view: article-grid
      columns: 2

  # All Publications with citations
  - block: collection
    content:
      title: Publications & Preprints
      text: A complete record of journal articles, conference papers, preprints, and technical reports.
      filters:
        folders:
          - publications
    design:
      view: citation

  # Research Projects
  - block: collection
    id: projects
    content:
      title: Research Projects
      text: Active research themes, datasets, code repositories, and field investigation areas.
      filters:
        folders:
          - projects
    design:
      view: article-grid
      fill_image: false
      columns: 3
      show_date: false
      show_read_time: false

  # Talks & Presentations
  - block: collection
    id: talks
    content:
      title: Talks & Presentations
      text: Seminar presentations, conference talks, posters, and invited discussions.
      filters:
        folders:
          - events
    design:
      view: card

  # Learning Notes
  - block: collection
    id: notes
    content:
      title: Learning Notes & Reflections
      subtitle: Public research notebook and study log
      text: |
        I maintain a public learning notebook documenting research workflows, paper reading notes, technical experiments, and reflections on the process of scientific discovery.
        These notes are intentionally kept lightweight—easy to update and useful for others working on similar problems.
      page_type: blog
      count: 6
      filters:
        author: ''
        category: ''
        tag: ''
        exclude_featured: false
        exclude_future: false
        exclude_past: false
      offset: 0
      order: desc
    design:
      view: card
      spacing:
        padding: [0, 0, 0, 0]

  # Contact & Collaboration
  - block: markdown
    id: contact
    content:
      title: Get in Touch
      subtitle: Let's collaborate, discuss research, or explore shared interests
      text: |-
        I welcome conversations with researchers, prospective advisors, students, and colleagues interested in geodesy, geophysics, earthquake mechanics, or open-science practices.

        <div class="academic-contact-panel">
          <div>
            <p class="academic-kicker">Direct Email</p>
            <p><a href="mailto:yangfe0624@gmail.com" style="font-weight: 600;">yangfe0624@gmail.com</a></p>
          </div>
          <div>
            <p class="academic-kicker">Academic & Social Profiles</p>
            <p>Find me on Google Scholar, ResearchGate, ORCID, GitHub, Bilibili, Douyin. All links are in <a href="#about"><code>data/authors/me.yaml</code></a> for easy updates.</p>
          </div>
          <div>
            <p class="academic-kicker">Website Philosophy</p>
            <p>Keep public claims accurate and verifiable. Formal achievements go in CV; informal explorations belong in learning notes.</p>
          </div>
        </div>
    design:
      columns: '1'
---
