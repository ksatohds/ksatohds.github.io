# CLAUDE.md

This file provides guidance to Claude Code when working with this repository.

## Repository Overview

This is the academic homepage of Kenichi Satoh (佐藤健一), hosted at `https://ksatohds.github.io/`. Built with Jekyll and deployed via GitHub Pages.

## Site Structure

- **Jekyll site** with custom layout (no theme gem)
- `_config.yml` — Jekyll configuration (`baseurl: ""` since this is a `*.github.io` repo)
- `_layouts/default.html` — Shared layout with navigation, header, footer
- `assets/css/style.css` — All styles (responsive, card-based design)
- Content pages (Markdown with embedded HTML):
  - `index.md` — 近況 (News/Home)
  - `gallery.md` — 展示 (Gallery/Showcase)
  - `laboratory.md` — ゼミ (Seminar/Lab)
  - `cv.md` — 略歴 (CV/Biography)
  - `papers.md` — 論文 (Publications, ~110 papers)
  - `english.md` — English version
- Image directories: `home/`, `gallery/`, `English/`, `Laboratory/`, `c-v/`

## Key Conventions

- Navigation links use `.html` extension (e.g., `/gallery.html`)
- Image paths use Liquid filter: `{{ 'home/filename.jpg' | relative_url }}`
- CSS classes for styling: `.card`, `.section-title`, `.pub-list`, `.news-list`, `.timeline`, `.gallery-grid`, etc.
- Photos constrained to `max-height: 200px`
- Google Fonts: Inter + Noto Sans JP
- Responsive design with mobile hamburger menu

## Common Commands

```bash
# Push changes to deploy (GitHub Pages auto-builds from main branch)
git add <files> && git commit -m "message" && git push

# Check GitHub Pages build status
export PATH="/c/Program Files/GitHub CLI:$PATH"
gh api repos/ksatohds/ksatohds.github.io/pages
```

## Notes

- `.gitignore` excludes `/*.html` (old Google Sites exports) but includes `_layouts/*.html`
- `_config.yml` excludes `*.html` from Jekyll build to avoid processing old exports
- LINK page (personal bookmarks) is not part of this site; planned for a separate private repo
- Commit messages use date-based format (e.g., `20250217 1228`)
- All documentation and content should preserve the original language (Japanese/English as appropriate)
