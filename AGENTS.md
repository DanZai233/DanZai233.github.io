# AGENTS.md

## Cursor Cloud specific instructions

This repository (`DanZai233.github.io`) is a Hugo static blog using the [Stack](https://github.com/CaiJimmy/hugo-theme-stack) theme, deployed to GitHub Pages via GitHub Actions.

### Prerequisites

- **Hugo extended** >= 0.154.0 (the Stack theme requires extended edition for SCSS/TypeScript support)
- The theme is installed as a git submodule under `themes/hugo-theme-stack`

### Key commands

| Task | Command |
|---|---|
| Install Hugo (if missing) | `wget -qO- https://github.com/gohugoio/hugo/releases/download/v0.156.0/hugo_extended_0.156.0_linux-amd64.tar.gz \| tar xz hugo && sudo mv hugo /usr/local/bin/` |
| Init submodules | `git submodule update --init --recursive` |
| Dev server | `hugo server --bind 0.0.0.0 --port 1313 --baseURL http://localhost:1313/ --disableFastRender` |
| Production build | `hugo --gc --minify` |
| New post | `hugo new content post/<slug>/index.md` |

### Project structure

- `config/_default/` — Hugo configuration (YAML format, split into `hugo.yaml`, `params.yaml`, `markup.yaml`, `menu.yaml`, `related.yaml`)
- `content/post/` — Blog posts (each post is a directory with `index.md`)
- `content/page/` — Static pages (about, archives, search)
- `themes/hugo-theme-stack/` — Theme (git submodule, do not edit directly)
- `.github/workflows/deploy.yaml` — GitHub Actions workflow for deploying to GitHub Pages

### Non-obvious notes

- After cloning, always run `git submodule update --init --recursive` to fetch the theme.
- The theme requires Hugo **extended** edition; the standard edition will fail with SCSS errors.
- `hasCJKLanguage: true` is set in `hugo.yaml` for correct Chinese word count and summary behavior.
- The dev server uses `--disableFastRender` to avoid stale content issues during development.
