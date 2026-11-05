#!/usr/bin/env python3
"""Check generated paper coverage, anchors, math and local navigation."""

from collections import Counter
from html.parser import HTMLParser
import re
from urllib.parse import unquote, urlsplit

from build_html import DOCS, HERE, PAPERS
from figures import FIGURES


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
        self.images = Counter()
        self.images_without_alt = 0
        self.caption_stack = None
        self.invalid_captions = 0
        self.section_numbers = []
        self.section_number_buffer = None
        self.table_numbers = []
        self.table_number_buffer = None
        self.heading_id = None
        self.equation_id = None
        self.equation_number_buffer = None
        self.table_id = None
        self.formal_id = None
        self.formal_number_buffer = None
        self.target_numbers = {}
        self.reference_buffer = None
        self.references = []
        self.text = []
        self.feed(path.read_text(encoding="utf-8"))

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if tag == "figcaption":
            self.caption_stack = []
        elif self.caption_stack is not None and tag not in {"br", "img", "wbr"}:
            self.caption_stack.append(tag)
        if "id" in attrs:
            self.ids[attrs["id"]] += 1
        if tag == "a" and "href" in attrs:
            self.links.append(attrs["href"])
            if attrs.get("data-reference-type") and attrs["href"].startswith("#"):
                self.reference_buffer = (attrs["href"][1:], [])
        if tag == "img":
            self.links.append(attrs.get("src", ""))
            self.images[attrs.get("src", "")] += 1
            if not attrs.get("alt", "").strip():
                self.images_without_alt += 1
        if tag == "link" and attrs.get("rel") == "stylesheet":
            self.links.append(attrs.get("href", ""))
        if tag == "math":
            self.math += 1
        if tag == "h2":
            self.h2 += 1
        if tag == "table":
            self.tables += 1
        classes = set(attrs.get("class", "").split())
        if tag in {"h2", "h3"}:
            self.heading_id = attrs.get("id")
        if tag == "span" and "header-section-number" in classes:
            self.section_number_buffer = []
        if tag == "span" and "equation" in classes:
            self.equation_id = attrs.get("id")
        if tag == "span" and "equation-number" in classes and self.equation_id:
            self.equation_number_buffer = []
        if tag == "div" and attrs.get("id", "").startswith("tab:"):
            self.table_id = attrs["id"]
        if tag == "div" and classes.intersection({"theorem", "proposition", "lemma", "corollary"}):
            self.formal_id = attrs.get("id")
        if tag == "strong" and "table-number" in classes:
            self.table_number_buffer = []
        if tag == "strong" and self.formal_id:
            self.formal_number_buffer = []
        if "equation" in classes:
            self.equations += 1
        if "math" in classes:
            self.unrendered_math += 1
        self.citations.update(attrs.get("data-cites", "").split())

    def handle_endtag(self, tag):
        if tag == "a" and self.reference_buffer is not None:
            target, text = self.reference_buffer
            self.references.append((target, "".join(text).strip()))
            self.reference_buffer = None
        if tag == "span" and self.section_number_buffer is not None:
            number = "".join(self.section_number_buffer).strip()
            self.section_numbers.append(number)
            if self.heading_id:
                self.target_numbers[self.heading_id] = number
            self.section_number_buffer = None
        if tag == "span" and self.equation_number_buffer is not None:
            self.target_numbers[self.equation_id] = "".join(self.equation_number_buffer).strip()
            self.equation_number_buffer = None
            self.equation_id = None
        if tag == "strong" and self.table_number_buffer is not None:
            number = "".join(self.table_number_buffer).strip()
            self.table_numbers.append(number)
            if self.table_id:
                self.target_numbers[self.table_id] = re.search(r"\d+", number).group()
                self.table_id = None
            self.table_number_buffer = None
        if tag == "strong" and self.formal_number_buffer is not None:
            match = re.search(r"\d+", "".join(self.formal_number_buffer))
            if match:
                self.target_numbers[self.formal_id] = match.group()
            self.formal_id = None
            self.formal_number_buffer = None
        if tag in {"h2", "h3"}:
            self.heading_id = None
        if tag == "figcaption":
            if self.caption_stack:
                self.invalid_captions += 1
            self.caption_stack = None
        elif self.caption_stack is not None:
            if self.caption_stack and self.caption_stack[-1] == tag:
                self.caption_stack.pop()
            else:
                self.invalid_captions += 1

    def handle_data(self, data):
        self.text.append(data)
        if self.section_number_buffer is not None:
            self.section_number_buffer.append(data)
        if self.table_number_buffer is not None:
            self.table_number_buffer.append(data)
        if self.equation_number_buffer is not None:
            self.equation_number_buffer.append(data)
        if self.formal_number_buffer is not None:
            self.formal_number_buffer.append(data)
        if self.reference_buffer is not None:
            self.reference_buffer[1].append(data)


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
        check(document.images_without_alt == 0, f"{name}: image without descriptive alt text", errors)
        check(document.invalid_captions == 0, f"{name}: malformed figure caption", errors)
        for href in document.links:
            url = urlsplit(href)
            if url.scheme or url.netloc:
                continue
            if not href:
                errors.append(f"{name}: empty resource URL")
                continue
            target = unquote(url.path) or name
            target_path = DOCS / target
            check(target_path.is_file(), f"{name}: missing link target {href}", errors)
            if url.fragment and target in documents:
                fragment = unquote(url.fragment)
                check(fragment in documents[target].ids, f"{name}: missing anchor {href}", errors)
        for target, text in document.references:
            expected = document.target_numbers.get(target)
            check(expected is not None, f"{name}: missing number for reference #{target}", errors)
            if expected is not None:
                check(text == expected, f"{name}: reference #{target} displays {text}, expected {expected}", errors)

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
        numbered_sections = len(re.findall(r"^\\section\{", source, re.MULTILINE))
        expected_numbers = [str(number) for number in range(1, numbered_sections + 1)]
        check(document.section_numbers == expected_numbers, f"{name}: inconsistent section numbering", errors)
        tables = len(re.findall(r"\\begin\{table\*?\}", source))
        check(document.tables == tables, f"{name}: {document.tables}/{tables} tables", errors)
        captions = len(re.findall(r"^\\caption\{", source, re.MULTILINE))
        expected_tables = [f"Table {number}." for number in range(1, captions + 1)]
        check(document.table_numbers == expected_tables, f"{name}: inconsistent table numbering", errors)
        check(document.math > 0, f"{name}: no MathML", errors)
        text = " ".join(document.text)
        for result in re.findall(r"\\begin\{result\}\{([^{}]+)\}", source):
            check(result in text, f"{name}: missing result heading {result}", errors)

    overview = documents.get("index.html")
    if overview:
        for name in FIGURES:
            check(overview.images[f"plots/{name}"] == 1, f"index.html: expected one plot {name}", errors)

    if errors:
        raise SystemExit("\n".join(errors))
    print(f"Checked {len(documents)} pages: sections, results, equations, citations, labels and local links.")


if __name__ == "__main__":
    main()
