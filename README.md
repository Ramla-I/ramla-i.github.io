# Personal website

A clean, static personal/academic site — plain HTML + CSS, no build step.

## Pages
- `index.html` — home / introduction
- `publications.html` — publications list
- `cv.html` — CV (link a PDF at `assets/cv.pdf`)
- `open-source.html` — open-source projects
- `style.css` — shared styles (light + dark mode)
- `assets/` — put `profile.jpg` and `cv.pdf` here

## Preview locally
Just open `index.html` in a browser, or run a tiny server:

```bash
cd ramla-ijaz.github.io
python3 -m http.server 8000
# visit http://localhost:8000
```

## Publish on GitHub Pages

This site is set up to be served from a **user site** (`https://<username>.github.io`).

1. Create a GitHub repo named **`<username>.github.io`** (use your real GitHub username; the folder is currently named `ramla-ijaz.github.io` as a placeholder — rename it to match).
2. From inside this folder:

   ```bash
   git init
   git add .
   git commit -m "Initial site"
   git branch -M main
   git remote add origin https://github.com/<username>/<username>.github.io.git
   git push -u origin main
   ```

3. On GitHub: **Settings → Pages → Build and deployment → Source: Deploy from a branch**, branch `main`, folder `/ (root)`. Save.
4. Wait ~1 minute, then visit `https://<username>.github.io`.

> Want it under an existing repo instead (e.g. `username.github.io/site`)? Push to any repo and set Pages source to that branch — the URL becomes `https://<username>.github.io/<repo>/`.

## To-do (search the HTML for `TODO`)
- [ ] Replace placeholder Google Scholar / GitHub / LinkedIn links
- [ ] Add `assets/profile.jpg` (square photo) and `assets/cv.pdf`
- [ ] Rewrite the intro on `index.html` in your own voice
- [ ] Fill in real publications, CV entries, and projects
- [ ] (Optional) Set a custom domain in Settings → Pages
