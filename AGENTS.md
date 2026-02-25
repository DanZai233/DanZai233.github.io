# AGENTS.md

## Cursor Cloud specific instructions

This repository (`DanZai233.github.io`) is a Hugo static blog using the [Stack](https://github.com/CaiJimmy/hugo-theme-stack) theme, deployed to GitHub Pages via GitHub Actions.

### Prerequisites

- **Hugo extended** >= 0.154.0 (the Stack theme requires extended edition for SCSS/TypeScript support)
- The theme is installed as a git submodule under `themes/hugo-theme-stack`

### Key commands

| Task | Command |
|---|---|
| Init submodules | `git submodule update --init --recursive` |
| Dev server | `hugo server --bind 0.0.0.0 --port 1313 --baseURL http://localhost:1313/ --disableFastRender` |
| Production build | `hugo --gc --minify` |
| New post | `hugo new content post/<slug>/index.md` |

### Project structure

- `config/_default/` — Hugo configuration (YAML): `hugo.yaml`, `params.yaml`, `markup.yaml`, `menu.yaml`, `related.yaml`
- `content/post/` — Blog posts (each post is a directory with `index.md`)
- `content/page/` — Static pages (about, archives, search)
- `assets/scss/custom.scss` — Custom pink theme overrides (colors, background, card styles)
- `assets/icons/` — Custom SVG icons (brand-qq, photo, train)
- `assets/img/` — Avatar and background images
- `static/img/` — Static copies of images for CSS `url()` references
- `themes/hugo-theme-stack/` — Theme (git submodule, do not edit directly)
- `.github/workflows/deploy.yaml` — GitHub Actions workflow for GitHub Pages

### Non-obvious notes

- After cloning, always run `git submodule update --init --recursive` to fetch the theme.
- The theme requires Hugo **extended** edition; the standard edition will fail with SCSS errors.
- `hasCJKLanguage: true` is set in `hugo.yaml` for correct Chinese word count and summary behavior.
- The dev server uses `--disableFastRender` to avoid stale content issues.
- Custom styles in `assets/scss/custom.scss` override theme defaults — the site uses `assets/icons/` for custom SVG icons (brand-qq, photo, train) that Hugo resolves before the theme's `assets/icons/`.
- Background image is referenced via CSS `url('/img/background.jpg')` from `static/img/` — if replacing, update both `assets/img/` and `static/img/`.
- **Deployment**: workflow uses `peaceiris/actions-gh-pages@v4` to push built site to `gh-pages` branch. Pages source must be set to `gh-pages` branch (not `main`).
- **Comments**: Giscus is enabled (GitHub Discussions based). Config is in `params.yaml` under `comments.giscus`. The Giscus GitHub App must be installed on this repo for it to work.
