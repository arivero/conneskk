"""Open the result files on a reading route or ranked strategy item."""

import argparse
from pathlib import Path
import re


RESULTS = Path(__file__).resolve().parents[1] / "results"


def reading_routes():
    catalogue = (RESULTS / "README.md").read_text(encoding="utf-8")
    table = catalogue.split("\n## Reading routes\n", 1)[1].split("\n## ", 1)[0]
    for line in table.splitlines():
        if line.startswith("| `"):
            key, strategies, question, links = line.strip("|").split("|")
            paths = re.findall(r"\]\(([\w.-]+\.md)\)", links)
            yield key.strip(" `"), strategies.strip().split(", "), question.strip(), paths


def check_routes(routes):
    strategy = (RESULTS.parent / "STRATEGY.md").read_text(encoding="utf-8")
    ranked = set(re.findall(r"^\| [^|]+ \| (T\d+[a-z]?) \|", strategy, re.MULTILINE))
    covered = {item for _, items, _, _ in routes for item in items}
    if covered != ranked:
        raise SystemExit(f"Strategy IDs missing from the routes: {sorted(ranked - covered)}. "
                         f"Unranked IDs on routes: {sorted(covered - ranked)}.")
    for key, _, _, paths in routes:
        if len(set(paths)) < 2:
            raise SystemExit(f"Route '{key}' needs a construction and a second result to test it.")
        for name in paths:
            if not (RESULTS / name).is_file():
                raise SystemExit(f"Missing result on route '{key}': {name}")
    print(f"Checked {len(routes)} routes covering {len(ranked)} ranked strategy items.")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("topic", nargs="?", help="route name or strategy ID, e.g. scale or T13")
    parser.add_argument("--paths", action="store_true", help="print just the selected paths")
    parser.add_argument("--check", action="store_true", help="check route files and strategy coverage")
    args = parser.parse_args()
    routes = list(reading_routes())
    if args.check:
        check_routes(routes)
        return
    if args.topic is None:
        for key, strategies, question, _ in routes:
            print(f"{key:12} {', '.join(strategies):22} {question}")
        return

    topic = args.topic.casefold()
    choices = [route for route in routes
               if topic == route[0] or any(topic == item.casefold() for item in route[1])]
    if not choices:
        parser.error(f"unknown route or strategy '{args.topic}'. Run without a topic to list routes")
    printed = set()
    for key, _, question, paths in choices:
        if not args.paths:
            print(f"\n{key} — {question}")
        for name in paths:
            if name in printed:
                continue
            printed.add(name)
            path = RESULTS / name
            if not path.is_file():
                parser.error(f"missing result on route '{key}': {path}")
            if args.paths:
                print(f"results/{name}")
            else:
                print(f"\nresults/{name}\n\n{path.read_text(encoding='utf-8').rstrip()}")


if __name__ == "__main__":
    main()
