---
title: "Quick Guide: Updating Your Academic Website"
authors:
  - me
date: 2026-05-16
lastmod: 2026-05-16
tags:
  - Website
  - Meta
  - Tutorial
categories:
  - Resources
summary: "A 5-minute reference guide for adding blog posts, papers, and projects to your academic homepage."
---

This guide walks you through the most common updates to your academic website. All examples take 5-10 minutes.

## Adding a New Blog Post (5 min)

1. **Create a folder** in `content/blog/`:
   ```bash
   mkdir -p content/blog/my-research-note
   ```

2. **Create `index.md`**:
   ```markdown
   ---
   title: "Title of Your Note"
   authors:
     - me
   date: 2026-05-16
   tags:
     - InSAR
     - Learning
   summary: "One-line summary of the content."
   ---

   # Your content starts here
   
   Write in regular Markdown. No special formatting needed.
   ```

3. **Test locally**:
   ```bash
   hugo server
   ```
   Open http://localhost:1313 and check the `Notes` section.

## Updating Personal Info (2 min)

All your basic information lives in **`data/authors/me.yaml`**:

- **Name & bio**: Edit `name.*` and `bio` fields
- **Social media links**: Edit the `links:` section
- **Education**: Update `education:[]` with dates and institutions  
- **Experience**: Update `experience:[]` with roles and organizations
- **Skills**: Edit `skills:` with your technical abilities
- **Language proficiency**: Update `languages:[]`

Example:
```yaml
links:
  - icon: brands/github
    url: "https://github.com/yourusername"
    label: GitHub
  - icon: academicons/google-scholar
    url: "https://scholar.google.com/citations?user=YOUR_ID"
    label: Google Scholar
```

## Adding a Published Paper (5 min)

1. **Create folder**:
   ```bash
   mkdir -p content/publications/my-journal-paper
   ```

2. **Add `index.md`** with publication metadata:
   ```yaml
   ---
   title: "Title of Your Paper"
   authors: [me, "Co-Author Name"]
   date: "2025-06-01T00:00:00Z"
   publication_types: ["article-journal"]
   publication: "*Journal Name*, Vol. X, pp. Y-Z"
   abstract: |
     Your abstract here...
   featured: true  # Shows on homepage
   links:
     - name: DOI
       url: "https://doi.org/10.xxxx/xxxxx"
   ---
   ```

## Starting a Research Project Page (5 min)

1. **Create folder**:
   ```bash
   mkdir -p content/projects/my-research-project
   ```

2. **Add `index.md`**:
   ```yaml
   ---
   title: "Project Title"
   authors: [me]
   date: 2026-05-01
   summary: "One-sentence description."
   links:
     - icon: github
       icon_pack: fab
       name: Code
       url: "https://github.com/yourname/project"
     - icon: database
       icon_pack: fas
       name: Dataset
       url: "https://zenodo.org/yourdata"
   ---
   
   ## Overview
   Project description and motivation.
   
   ## Key Results
   - Finding 1
   - Finding 2
   ```

## Updating Your CV/Resume

1. Prepare a PDF file with your CV
2. Save it to: `static/uploads/resume.pdf`
3. The "Download CV" button on the homepage automatically links to it

## Checking Local Changes

```bash
# Navigate to your project
cd /Users/fueryang/Code/MyAcademicWeb

# Start local server
hugo server

# Open browser: http://localhost:1313
```

Press `Ctrl+C` to stop the server.

## Publishing Changes (Git)

```bash
# Check what changed
git status

# Add files
git add .

# Create a commit
git commit -m "Add new blog post: [title]"

# Push to GitHub
git push
```

Your changes will automatically deploy to https://fueryang0624.github.io/ within a few minutes.

## Common Markdown Tips for Notes

```markdown
**Bold text** for emphasis

*Italic text* for references

- Bullet point 1
- Bullet point 2

1. Numbered item
2. Numbered item

[Link text](https://example.com)

> Blockquote for important points

`inline code` for commands

```python
# Code block with syntax highlighting
import numpy as np
data = np.array([1, 2, 3])
```

$E = mc^2$ for inline equations

[Table syntax](https://www.markdownguide.org/tables/)
```

## Workflow Tips

1. **Monthly cadence**: Add 1-2 posts per month for engagement
2. **Immediate publication**: Publish papers within days of acceptance
3. **Link management**: Keep all social media and profile links updated in `me.yaml`
4. **Git commits**: Use descriptive messages: "Add paper: Smith et al. 2025"
5. **Backup CV**: Store a local copy before updating

## Troubleshooting

- **Changes not showing locally?** Restart `hugo server`
- **Markdown not rendering?** Check indentation in YAML front matter
- **Links not working?** Verify URLs are complete (include https://)
- **Missing images?** Ensure image files are in the same folder as `index.md`

---

**Next step**: Start adding your own content! Pick one blog post or publication to add first. You've got this. 🚀

