#!/usr/bin/env python3

"""Split the downloaded mods into mods_server/ and mods_client/.

mods/ is only a staging directory filled by modrinth_curseforge_downloader.py,
afterwards it is removed. Side of every mod comes from the org tags in
download_configuration/mods.org:

    * Embeddium :client:      -> mods_client only
    * Canary :server:         -> mods_server only
    * Create                  -> both (default when there is no tag)

Shared mods are hardlinked, so they take disk space only once.
The script fails when the org file and the downloaded files do not match.
"""

import os
import re
import shutil
import sys
import urllib.parse

ORG_FILE = "download_configuration/mods.org"
STAGING = "mods"
SERVER = "mods_server"
CLIENT = "mods_client"

HEADING_RE = re.compile(r"^\*+\s+(.*)$")
TAG_RE = re.compile(r"(:\S+?:)")
LINK_RE = re.compile(
    r"\[\[(https?://\S+?)\]\[(?:modrinth|curseforge)_download_link\]\]"
)

VALID_TAGS = {":server:", ":client:", ":both:"}


def parse_org():
    entries = []
    current = None
    with open(ORG_FILE, encoding="utf-8") as file:
        for line in file:
            heading = HEADING_RE.match(line)
            if heading:
                raw = heading.group(1)
                current = {
                    "title": TAG_RE.sub("", raw).strip(),
                    "tags": set(TAG_RE.findall(raw)),
                    "links": [],
                }
                entries.append(current)
                continue
            if current is None:
                continue
            link = LINK_RE.search(line)
            if link:
                current["links"].append(link.group(1))
    return entries


def sides(entry):
    unknown = entry["tags"] - VALID_TAGS
    if unknown:
        raise SystemExit(
            f"unknown tag(s) {', '.join(sorted(unknown))} on entry '{entry['title']}'"
        )
    client = ":client:" in entry["tags"]
    server = ":server:" in entry["tags"]
    if client and not server:
        return ("client",)
    if server and not client:
        return ("server",)
    return ("server", "client")


def expected_names(entry):
    """File names taken from modrinth links.

    The downloader saves the file name straight from the url, so it keeps the
    url encoding (%2B instead of +). Both forms are accepted here.
    """
    names = []
    for url in entry["links"]:
        if "curseforge" in url:
            continue
        base = os.path.basename(url.split("?")[0])
        for name in (base, urllib.parse.unquote(base)):
            if name and name not in names:
                names.append(name)
    return names


def normalize(text):
    return re.sub(r"[^a-z0-9]", "", text.lower())


def fuzzy_candidates(entry, available):
    key = normalize(entry["title"].split("(")[0])
    if not key:
        return []
    return [name for name in available if normalize(name).startswith(key)]


def resolve(entries, files):
    """Map every org entry to an existing file name."""
    claimed = {}
    errors = []
    unresolved = set()

    for entry in entries:
        names = expected_names(entry)
        if not names:
            continue
        found = next((name for name in names if name in files), None)
        if found is not None:
            claimed[entry["title"]] = found
        else:
            unresolved.add(entry["title"])
            errors.append(f"missing file for '{entry['title']}': {names[0]}")

    taken = set(claimed.values())
    for entry in entries:
        if entry["title"] in claimed or entry["title"] in unresolved:
            continue
        available = sorted(files - taken)
        matches = fuzzy_candidates(entry, available)
        if len(matches) == 1:
            claimed[entry["title"]] = matches[0]
            taken.add(matches[0])
        elif len(matches) > 1:
            errors.append(
                f"ambiguous file for '{entry['title']}': {', '.join(matches)}"
            )
        else:
            errors.append(f"no downloaded file for '{entry['title']}'")

    return claimed, sorted(files - taken), errors


def link(source, destination):
    try:
        os.link(source, destination)
    except OSError:
        shutil.copy2(source, destination)


def fill(directory, names, staging):
    for name in names:
        link(os.path.join(staging, name), os.path.join(directory, name))


def main():
    if not os.path.isdir(STAGING):
        raise SystemExit(f"{STAGING}/ does not exist, run the downloader first")

    files = {
        name
        for name in os.listdir(STAGING)
        if not name.startswith(".")
        and os.path.isfile(os.path.join(STAGING, name))
    }
    if not files:
        raise SystemExit(f"{STAGING}/ is empty")

    entries = parse_org()
    claimed, unclaimed, errors = resolve(entries, files)

    for name in unclaimed:
        errors.append(f"downloaded file without an org entry: {name}")

    if errors:
        print("cannot split mods:", file=sys.stderr)
        for error in errors:
            print(f"  {error}", file=sys.stderr)
        return 1

    server = []
    client = []
    shared = []
    for entry in entries:
        name = claimed[entry["title"]]
        where = sides(entry)
        if len(where) == 2:
            shared.append(name)
        if "server" in where:
            server.append(name)
        if "client" in where:
            client.append(name)

    for directory in (SERVER, CLIENT):
        shutil.rmtree(directory, ignore_errors=True)
        os.makedirs(directory)
    fill(SERVER, server, STAGING)
    fill(CLIENT, client, STAGING)
    shutil.rmtree(STAGING)

    print(f"{SERVER}: {len(server)} mods")
    print(f"{CLIENT}: {len(client)} mods")
    print(f"shared: {len(shared)}, server only: {len(server) - len(shared)}, "
          f"client only: {len(client) - len(shared)}")
    print(f"removed staging directory {STAGING}/")
    return 0


if __name__ == "__main__":
    sys.exit(main())
