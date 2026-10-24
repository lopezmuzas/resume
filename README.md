# Resume

Antonio López Muzás, software engineer. Static one-page resume, published with GitHub Pages:
[lopezmuzas.github.io/resume](https://lopezmuzas.github.io/resume/).

- `index.html`: the page, in English.
- `assets/css/main.css`: styles and theme tokens (dark by default, light by system preference or toggle).
- `assets/fonts/`: Plus Jakarta Sans and JetBrains Mono (SIL Open Font License), served from this site.

Locally: `docker compose up` and open http://localhost:8080.

## The PDF

`antonio-lopez-muzas-cv.pdf` is the print version of `index.html` (single column, plain text, no photo) for
job portals, ATS and AI screeners. Regenerate it after changing the page:

```bash
python3 -m http.server 8731 --bind 127.0.0.1 &
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --no-pdf-header-footer \
  --print-to-pdf="$PWD/antonio-lopez-muzas-cv.pdf" http://127.0.0.1:8731/
kill %1
```
