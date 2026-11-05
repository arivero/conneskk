#!/usr/bin/env python3
"""Build the static HTML edition from the papers and the integrated discussion."""

import html
from html.parser import HTMLParser
from pathlib import Path
import re
import subprocess


HERE = Path(__file__).resolve().parent
DOCS = HERE.parent / "docs"
FILTER = HERE / "html_filter.lua"
BIBLIOGRAPHY = HERE / "towerless_intervals.bib"

PAPERS = [
    {
        "name": "towerless_intervals",
        "title": "Finite spectral triples as towerless intervals",
        "short": "Towerless intervals",
        "supplement": "towerless",
        "citation": "towerlesspaper",
    },
    {
        "name": "chiral_limit_note",
        "title": "Explicit masses and the chiral limit in odd reductions of almost-commutative geometries",
        "short": "Masses and the chiral limit",
        "supplement": "chiral_limit_note",
    },
    {
        "name": "boundary_condition_note",
        "title": "The finite Dirac operator as a boundary condition on an interval",
        "short": "The Dirac operator at the walls",
        "supplement": "boundary_condition_note",
        "citation": "boundarynote",
    },
    {
        "name": "joint_limit_note",
        "title": "Finite spectral windows with an opening tower in seven-dimensional parents",
        "short": "Opening towers and seven dimensions",
        "supplement": "joint_limit_note",
        "citation": "jointnote",
    },
    {
        "name": "connes_kk_dictionary_note",
        "title": "A dictionary between finite spectral triples and Kaluza-Klein data",
        "short": "The finite / Kaluza-Klein dictionary",
        "supplement": "connes_kk_dictionary_note",
    },
    {
        "name": "generations_note",
        "title": "The two families of 84 and the number of generations",
        "short": "The two families of 84",
        "supplement": "generations_note",
        "citation": "gennote",
    },
    {
        "name": "real_structure_note",
        "title": "The real structure of a massless block: SO(30) in the finite geometry",
        "short": "Real structure and SO(30)",
        "supplement": "real_structure_note",
        "citation": "realnote",
    },
]


class Headings(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.headings = []
        self.current = None
        self.in_annotation = False

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if tag in {"h2", "h3"} and "id" in attrs:
            self.current = [tag, attrs["id"], []]
        elif tag == "annotation" and self.current:
            self.in_annotation = True

    def handle_endtag(self, tag):
        if tag == "annotation":
            self.in_annotation = False
        elif self.current and tag == self.current[0]:
            level, identifier, pieces = self.current
            text = " ".join("".join(pieces).split())
            self.headings.append((level, identifier, text))
            self.current = None

    def handle_data(self, data):
        if self.current and not self.in_annotation:
            self.current[2].append(data)


def headings(fragment):
    parser = Headings()
    parser.feed(fragment)
    return parser.headings


def pandoc(source, source_format, extra=()):
    command = [
        "pandoc",
        f"--from={source_format}",
        "--to=html5",
        "--mathml",
        "--fail-if-warnings",
        *extra,
        f"--lua-filter={FILTER}",
    ]
    result = subprocess.run(
        command, input=source, text=True, capture_output=True, cwd=HERE, check=False
    )
    if result.returncode:
        raise RuntimeError(f"Pandoc failed:\n{result.stderr}")
    return result.stdout


def prepare_latex(source):
    # Pandoc does not recognize REVTeX's starred table or the named result
    # environment. Both substitutions retain their content and labels.
    source = source.replace(r"\begin{table*}", r"\begin{table}")
    source = source.replace(r"\end{table*}", r"\end{table}")
    source = re.sub(
        r"\\begin\{result\}\{([^{}]+)\}",
        lambda match: r"\begin{quote}\textbf{" + match.group(1) + ".}",
        source,
    )
    source = source.replace(r"\end{result}", r"\end{quote}")
    source = re.sub(
        r"\\newcommand\{\\supp\}\[1\]\{[^\n]*\}",
        lambda _: (
            r"\newcommand{\supp}[1]{\href{supplemental.pdf}"
            r"{Supplemental Material, part #1}}"
        ),
        source,
    )
    return source


def link_local_references(body):
    for paper in PAPERS:
        if "citation" not in paper:
            continue
        pattern = re.compile(
            r'(<div id="ref-' + re.escape(paper["citation"]) + r'"[^>]*>)(.*?)(</div>)',
            re.DOTALL,
        )
        link = (
            ' <a class="local-reference" href="'
            + html.escape(paper["name"], quote=True)
            + '.html">Read the paper in HTML</a>.'
        )
        body = pattern.sub(lambda match: match.group(1) + match.group(2) + link + match.group(3), body)
    return body


def paper_body(paper):
    source = prepare_latex((HERE / f'{paper["name"]}.tex').read_text(encoding="utf-8"))
    rendered = pandoc(
        source,
        "latex",
        (
            "--standalone",
            "--number-sections",
            "--shift-heading-level-by=1",
            "--metadata=link-citations:true",
            "--citeproc",
            f"--bibliography={BIBLIOGRAPHY}",
        ),
    )
    if "<body>" not in rendered or "</body>" not in rendered:
        raise RuntimeError(f'No HTML body in {paper["name"]}')
    body = rendered.split("<body>", 1)[1].rsplit("</body>", 1)[0].strip()
    marker = '<div id="refs"'
    if marker not in body:
        raise RuntimeError(f'No bibliography in {paper["name"]}')
    body = body.replace(marker, '<h2 id="references">References</h2>\n' + marker, 1)
    return link_local_references(body)


def navigation(current, overview_headings, paper_headings):
    def item(href, label, active=False):
        current_attr = ' aria-current="page"' if active else ""
        return (
            f'<a href="{html.escape(href, quote=True)}"{current_attr}>'
            f"{html.escape(label)}</a>"
        )

    parts = ['<nav class="site-tree" aria-label="Site contents">']
    parts.append('<p class="nav-label">Integrated discussion</p><ul class="topic-list">')
    parts.append("<li>" + item("index.html", "Overview", current == "index") + "</li>")
    for level, identifier, title in overview_headings:
        if level == "h2":
            parts.append("<li>" + item(f"index.html#{identifier}", title) + "</li>")
    parts.append('</ul><p class="nav-label">Complete papers</p><ul class="paper-list">')
    for paper in PAPERS:
        name = paper["name"]
        active = current == name
        parts.append("<li>" + item(f"{name}.html", paper["short"], active))
        parts.append("<details" + (" open" if active else "") + "><summary>Sections</summary><ul>")
        for level, identifier, title in paper_headings[name]:
            if level == "h2":
                parts.append("<li>" + item(f"{name}.html#{identifier}", title) + "</li>")
        parts.append("</ul></details></li>")
    parts.append("</ul></nav>")
    return "\n".join(parts)


def page(title, current, contents, overview_headings, paper_headings):
    return f"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="An integrated HTML edition of the papers on finite spectral triples and Kaluza-Klein limits.">
<title>{html.escape(title)} | Finite spectral triples and Kaluza-Klein limits</title>
<link rel="stylesheet" href="site.css">
</head>
<body>
<a class="skip-link" href="#content">Skip to content</a>
<div class="site-layout">
<aside class="sidebar">
  <a class="site-name" href="index.html">Finite spectral triples<br><span>and Kaluza-Klein limits</span></a>
  <p class="site-edition">An integrated reading of the papers</p>
  <details class="navigation" open>
    <summary>Contents</summary>
    {navigation(current, overview_headings, paper_headings)}
  </details>
</aside>
<div class="reading-pane">
<main id="content">
{contents}
</main>
<footer class="site-footer">
  <p>Draft research documents. Equations are rendered as MathML; the source papers and their supplements remain the record for each claim.</p>
  <p><a href="index.html">Integrated discussion</a> · <a href="supplemental.pdf">Full supplement</a> · <a href="https://github.com/arivero/conneskk">Research repository</a></p>
</footer>
</div>
</div>
</body>
</html>
"""


def paper_files(paper):
    name = paper["name"]
    supplement = paper["supplement"]
    return f"""<p class="breadcrumbs"><a href="index.html">Integrated discussion</a> / Complete paper</p>
<div class="paper-files" aria-label="Paper and supplement editions">
<span>Read or download</span>
<a href="{name}.pdf">Paper PDF</a>
<a href="{name}_mobile.pdf">Mobile PDF</a>
<a href="supplemental_{supplement}.pdf">Paper supplement</a>
<a href="supplemental_{supplement}_mobile.pdf">Mobile supplement</a>
</div>"""


def main():
    DOCS.mkdir(exist_ok=True)
    discussion = pandoc((HERE / "site_overview.md").read_text(encoding="utf-8"), "markdown")
    overview_headings = headings(discussion)
    bodies = {paper["name"]: paper_body(paper) for paper in PAPERS}
    paper_headings = {name: headings(body) for name, body in bodies.items()}

    (DOCS / "site.css").write_text((HERE / "site.css").read_text(encoding="utf-8"), encoding="utf-8")
    (DOCS / "index.html").write_text(
        page("Integrated discussion", "index", f'<article class="discussion">\n{discussion}\n</article>',
             overview_headings, paper_headings),
        encoding="utf-8",
    )
    for paper in PAPERS:
        name = paper["name"]
        contents = f'{paper_files(paper)}\n<article class="paper">\n{bodies[name]}\n</article>'
        (DOCS / f"{name}.html").write_text(
            page(paper["title"], name, contents, overview_headings, paper_headings),
            encoding="utf-8",
        )
    print(f"Built the integrated discussion and {len(PAPERS)} HTML papers in {DOCS}.")


if __name__ == "__main__":
    main()
