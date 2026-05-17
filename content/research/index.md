---
title: Research
date: 2026-05-17
type: landing

design:
  spacing: '4rem'

sections:
  - block: markdown
    content:
      title: Research Directions
      subtitle: Geodesy, tectonics, and open science for the solid Earth
      text: |-
        My research connects **satellite observations** to **earthquake-related deformation** and **regional tectonics**.
        I develop and apply InSAR workflows, invert for fault slip, and document reproducible pipelines for collaboration.
    design:
      columns: '1'
      css_class: academic-section-narrow

  - block: research-areas
    content:
      title: Thematic Areas
      items:
        - name: InSAR Time-Series Analysis
          description: Extracting reliable crustal deformation from multi-temporal SAR — phase unwrapping, atmospheric correction, and uncertainty quantification.
          status: active
          gradient: from-blue-800 to-blue-500
          topics:
            - Sentinel-1
            - MintPy
            - GMTSAR
          publications: "—"
        - name: Fault Slip & Crustal Deformation
          description: Inverting surface displacement for distributed slip, interseismic locking, and postseismic relaxation on active faults.
          status: active
          gradient: from-slate-800 to-slate-600
          topics:
            - Elastic dislocation
            - GNSS integration
            - Tectonic loading
          publications: "—"
        - name: Reproducible Geoscience
          description: Version-controlled data, scripted figures, and public notebooks so results can be verified and extended.
          status: emerging
          gradient: from-amber-700 to-amber-500
          topics:
            - Git workflows
            - Open data
            - Research notebooks
          publications: "—"
    design:
      columns: '3'
      css_class: academic-section-narrow

  - block: markdown
    content:
      title: Current Topics
      subtitle: Dissertation-scale questions (update as your focus crystallizes)
      text: |-
        - **Target region & faults:** [e.g., Tibetan Plateau margin / specific fault system]
        - **Primary datasets:** Sentinel-1 stacks, GNSS, geological maps
        - **Open questions:** interseismic coupling, postseismic decay, multi-fault interaction

        ### Collaborators

        I am building collaborations with advisors and peers at SUSTech and prior institutions.
        List confirmed collaborators here with links to their homepages when appropriate.
    design:
      columns: '1'
      css_class: academic-section-narrow
---
