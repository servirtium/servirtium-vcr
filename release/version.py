#!/usr/bin/env python3
"""Set or check the release version pin across independently shipped bindings.

The canonical form is a git tag with an optional pre-release, e.g. v2.0.0-alpha.3
(or plain v2.0.0, v2.0.0-rc.1). Each ecosystem spells that differently, so every
pin below declares which spelling it carries:

  tag     v2.0.0-alpha.3     SERVIRTIUM_VCR_VERSION, loader ENGINE_VERSION
  semver  2.0.0-alpha.3      npm, cargo, pub, shards, julia, gleam, dub, mix, nuget
  maven   2.0.0-alpha3       Maven (no dot before the pre-release number)
  gem     2.0.0.alpha.3      RubyGems
  pep440  2.0.0a3            Python (alpha->a, beta->b, rc->rc)
"""

import argparse
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parent.parent
TAG = r"v\d+\.\d+\.\d+(?:-[a-z]+\.\d+)?"
TAG_RE = re.compile(r"v(\d+\.\d+\.\d+)(?:-([a-z]+)\.(\d+))?")
SEMVER = r"\d+\.\d+\.\d+(?:-[a-z]+\.\d+)?"
MAVEN = r"\d+\.\d+\.\d+(?:-[a-z]+\d+)?"
GEM = r"\d+\.\d+\.\d+(?:\.[a-z]+\.\d+)?"
PEP = r"\d+\.\d+\.\d+(?:(?:a|b|rc)\d+)?"
PEP_KIND = {"alpha": "a", "beta": "b", "rc": "rc"}


def spellings(tag):
    """Derive every ecosystem spelling from a release tag."""
    m = TAG_RE.fullmatch(tag)
    if not m:
        raise ValueError(f"expected a release tag like v2.0.0-alpha.3, got {tag!r}")
    base, kind, num = m.groups()
    if kind is None:
        return {"tag": tag, "semver": base, "maven": base, "gem": base, "pep440": base}
    if kind not in PEP_KIND:
        raise ValueError(f"pre-release kind {kind!r} has no PEP 440 spelling (alpha/beta/rc)")
    return {
        "tag": tag,
        "semver": f"{base}-{kind}.{num}",
        "maven": f"{base}-{kind}{num}",
        "gem": f"{base}.{kind}.{num}",
        "pep440": f"{base}{PEP_KIND[kind]}{num}",
    }


# name -> (regex capturing only the version, spelling, expected match count)
PINS = {
    "SERVIRTIUM_VCR_VERSION": (rf"^({TAG})\s*$", "tag", 1),
    "javascript/package.json": (rf'^  "version": "({SEMVER})"', "semver", 1),
    # top-level version and packages[""] version (name line anchors it; other entries are deps)
    "javascript/package-lock.json": (rf'(?:^  |"name": "@servirtium/vcr",\n      )"version": "({SEMVER})"', "semver", 2),
    "rust/Cargo.toml": (rf'^version = "({SEMVER})"', "semver", 1),
    "dart/pubspec.yaml": (rf"^version: ({SEMVER})$", "semver", 1),
    "crystal/shard.yml": (rf"^version: ({SEMVER})$", "semver", 1),  # not the dependency line
    "julia/Project.toml": (rf'^version = "({SEMVER})"', "semver", 1),
    "gleam/gleam.toml": (rf'^version = "({SEMVER})"', "semver", 1),  # not gleam_stdlib constraint
    "zig/build.zig.zon": (rf'\.version = "({SEMVER})"', "semver", 1),
    "d/dub.json": (rf'^    "version": "({SEMVER})"', "semver", 1),
    "elixir/mix.exs": (rf'@version "({SEMVER})"', "semver", 1),
    "dotnet/Servirtium.Vcr/.build.ae": (rf'package_version\("({SEMVER})"\)', "semver", 1),
    "dotnet/Servirtium.Vcr/.releaseBuild.ae": (rf'package_version\("({SEMVER})"\)', "semver", 1),
    "dotnet/example/ServirtiumConsumerExample.csproj": (rf'Include="Servirtium\.Vcr" Version="({SEMVER})"', "semver", 1),
    "fsharp/Servirtium.Vcr.FSharp/Servirtium.Vcr.FSharp.fsproj": (rf"<Version>({SEMVER})</Version>", "semver", 1),
    "fsharp/example/ServirtiumConsumerExample.fsproj": (rf'Include="Servirtium\.Vcr\.FSharp" Version="({SEMVER})"', "semver", 1),
    # consumer-facing snippet + prose in the crystal README (SemVer spelling, not the full tag)
    "crystal/README.md": (rf"(?:^    version: |Naming `)({SEMVER})(?=      # REQUIRED|` resolves)", "semver", 2),
    "ruby/lib/servirtium/version.rb": (rf"VERSION = '({GEM})'", "gem", 1),
    "python/setup.py": (rf"version='({PEP})'", "pep440", 1),
    "java/src/main/java/com/paulhammant/servirtium/vcr/NativeLoader.java": (rf'ENGINE_VERSION = "({TAG})"', "tag", 1),
    "dotnet/Servirtium.Vcr/NativeLoader.cs": (rf'EngineVersion = "({TAG})"', "tag", 1),
}
# Maven poms: the project version and/or the dependency on the java binding jar.
# Pre-release-shaped versions only, so unrelated plain x.y.z dependency versions are untouched.
MAVEN_POMS = {
    "java/pom.xml": 1, "java/example/pom.xml": 1,
    "kotlin/pom.xml": 2, "kotlin/example/pom.xml": 1,
    "scala/pom.xml": 2, "scala/example/pom.xml": 1,
    "clojure/pom.xml": 2, "groovy/pom.xml": 2, "groovy/example/pom.xml": 1,
}
for _pom, _n in MAVEN_POMS.items():
    PINS[_pom] = (rf"<version>(\d+\.\d+\.\d+-[a-z]+\d+)</version>", "maven", _n)

SKIP_DIRS = {"target", "node_modules", ".git", "dist", "_build"}


def reference_files(root):
    """Markdown docs embedding the tag in download URLs/filenames (CHANGELOGs are history)."""
    out = []
    for p in sorted(root.rglob("*.md")):
        rel = p.relative_to(root)
        if SKIP_DIRS & set(rel.parts) or p.name.upper().startswith("CHANGELOG"):
            continue
        out.append(str(rel))
    return out


def version_files(root, tag):
    """Read and validate every pin before any file is changed."""
    sp = spellings(tag)
    files, mismatches = {}, []
    for name, (pattern, kind, count) in PINS.items():
        content = (root / name).read_text()
        matches = list(re.finditer(pattern, content, re.MULTILINE))
        if len(matches) != count:
            raise ValueError(f"{name}: expected {count} version pin(s), found {len(matches)}")
        want = sp[kind]
        for match in reversed(matches):
            if match[1] != want:
                mismatches.append(f"{name}: {match[1]} != {want} ({kind})")
            s, e = match.span(1)
            content = content[:s] + want + content[e:]
        files[name] = content
    return files, mismatches


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--set", dest="set_tag", metavar="TAG", help="prepare all pins for a new release")
    mode.add_argument("--check", dest="check_tag", nargs="?", const="", metavar="TAG",
                      help="check pins against TAG (default: SERVIRTIUM_VCR_VERSION)")
    args = parser.parse_args()
    try:
        vfile = ROOT / "SERVIRTIUM_VCR_VERSION"
        tag = args.set_tag or args.check_tag or vfile.read_text().strip()
        if not re.fullmatch(TAG, tag):
            raise ValueError(f"expected a release tag like v2.0.0-alpha.3, got {tag!r}")
        old = vfile.read_text().strip()
        files, mismatches = version_files(ROOT, tag)
        if args.set_tag:
            for name in reference_files(ROOT):
                content = files.get(name, (ROOT / name).read_text())
                if old in content:
                    files[name] = content.replace(old, tag)
            for name, content in files.items():
                if name in PINS or old in (ROOT / name).read_text():
                    (ROOT / name).write_text(content)
            print(f"Prepared version pins for {tag}; commit before tagging.")
        else:
            stale = [n for n in reference_files(ROOT) if old != tag and old in (ROOT / n).read_text()]
            if mismatches or stale:
                raise ValueError("version pins disagree:\n" + "\n".join(mismatches + [f"{n}: still references {old}" for n in stale]))
            print(f"All version pins match {tag}.")
    except (OSError, ValueError) as error:
        parser.exit(1, f"version: {error}\n")


if __name__ == "__main__":
    main()
