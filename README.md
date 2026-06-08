# Personal website

## Preview locally
Just open `index.html` in a browser, or run a tiny server:

```bash
python3 -m http.server 8000
# visit http://localhost:8000
```

## Regenerate the CV PDF
The CV PDF is rendered from `assets/cv-source.html`. Edit that file, then run:

```bash
cd assets
./build-cv.sh
```

This produces `assets/cv.pdf` (via headless Chrome). You can also pass a custom
input/output: `./build-cv.sh input.html output.pdf`.
