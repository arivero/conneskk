#!/usr/bin/env python3
"""Check generated paper coverage, anchors, math and local navigation."""

from collections import Counter
from html.parser import HTMLParser
from pathlib import Path
import re
from urllib.parse import unquote, urlsplit

from build_html import DOCS, HERE, PAPERS


class Document(HTMLParser):
    def __init__(self, path):
        super().__init__(convert_charrefs=True)
        self.path = path
        self.ids = Counter()
        self.links = []
        self.citations = set()
        self.equations = 0
        self.math = 0
        self.unrendered_math = 0
        self.h2 = 0
        self.tables = 0
        self.text = []
        self.feed(path.read_text(encoding="utf-8"))

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if "id" in attrs:
            self.ids[attrs["id"]] += 1
        if tag == "a" and "href" in attrs:
            self.links.append(attrs["href"])
        if tag == "math":
            self.math += 1
        if tag == "h2":
            self.h2 += 1
        if tag == "table":
            self.tables += 1
        classes = set(attrs.get("class", "").split())
        if "equation" in classes:
            self.equations += 1
        if "math" in classes:
            self.unrendered_math += 1
        self.citations.update(attrs.get("data-cites", "").split())

    def handle_data(self, data):
        self.text.append(data)


def check(condition, message, errors):
    if not condition:
        errors.append(message)


def main():
    errors = []
    paths = [DOCS / "index.html"] + [DOCS / f'{paper["name"]}.html' for paper in PAPERS]
    documents = {}
    for path in paths:
        if not path.is_file():
            errors.append(f"Missing generated page: {path}")
            continue
        documents[path.name] = Document(path)

    for name, document in documents.items():
        for identifier, count in document.ids.items():
            check(count == 1, f"{name}: duplicate id {identifier}", errors)
        check(document.unrendered_math == 0, f"{name}: unrendered TeX math", errors)
        for href in document.links:
            url = urlsplit(href)
            if url.scheme or url.netloc:
                continue
            target = unquote(url.path) or name
            target_path = DOCS / target
            check(target_path.is_file(), f"{name}: missing link target {href}", errors)
            if url.fragment and target in documents:
                fragment = unquote(url.fragment)
                check(fragment in documents[target].ids, f"{name}: missing anchor {href}", errors)

    for paper in PAPERS:
        name = paper["name"]
        document = documents.get(f"{name}.html")
        if not document:
            continue
        source = (HERE / f"{name}.tex").read_text(encoding="utf-8")
        labels = set(re.findall(r"\\label\{([^}]+)\}", source))
        missing_labels = labels - document.ids.keys()
        check(not missing_labels, f"{name}: missing labels {sorted(missing_labels)}", errors)
        citations = set()
        for group in re.findall(r"\\cite\{([^}]+)\}", source):
            citations.update(key.strip() for key in group.split(","))
        check(citations <= document.citations, f"{name}: missing citations {sorted(citations - document.citations)}", errors)
        equations = len(re.findall(r"\\begin\{equation\}", source))
        check(document.equations == equations, f"{name}: {document.equations}/{equations} equations", errors)
        sections = len(re.findall(r"^\\section\*?\{", source, re.MULTILINE))
        check(document.h2 == sections + 1, f"{name}: {document.h2 - 1}/{sections} sections", errors)
        tables = len(re.findall(r"\\begin\{table\*?\}", source))
        check(document.tables == tables, f"{name}: {document.tables}/{tables} tables", errors)
        check(document.math > 0, f"{name}: no MathML", errors)
        text = " ".join(document.text)
        for result in re.findall(r"\\begin\{result\}\{([^{}]+)\}", source):
            check(result in text, f"{name}: missing result heading {result}", errors)

    if errors:
        raise SystemExit("\n".join(errors))
    print(f"Checked {len(documents)} pages: sections, results, equations, citations, labels and local links.")


if __name__ == "__main__":
    main()
