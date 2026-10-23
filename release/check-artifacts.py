#!/usr/bin/env python3
"""Verify a release pin, nine libraries, nine ae-add packages, and the Linux ABI."""

import argparse
import ctypes
import hashlib
from pathlib import Path
import re
import subprocess


ROOT = Path(__file__).resolve().parent.parent
TAG_PATTERN = r"v\d+\.\d+\.\d+(?:-[0-9A-Za-z]+(?:[.-][0-9A-Za-z]+)*)?"
PLATFORMS = (
    ("linux", "x86_64", "so"), ("linux", "arm64", "so"),
    ("macos", "x86_64", "dylib"), ("macos", "arm64", "dylib"),
    ("windows", "x86_64", "dll"), ("windows", "arm64", "dll"),
    ("freebsd", "x86_64", "so"),
    ("linux", "x86_64-musl", "so"), ("linux", "arm64-musl", "so"),
)


def check_version(tag):
    if not re.fullmatch(TAG_PATTERN, tag):
        raise ValueError(f"invalid release tag: {tag!r}")
    want = (ROOT / "SERVIRTIUM_VCR_VERSION").read_text().strip()
    if want != tag:
        raise ValueError(f"SERVIRTIUM_VCR_VERSION is {want!r}, but release tag is {tag!r}; update and commit the pin before tagging")
    bootstrap = re.findall(r'^AE_FETCH="([^"]+)"', (ROOT / "bootstrap.sh").read_text(), re.MULTILINE)
    pinned = re.findall(r"^AETHER_REF=(\S+)$", (ROOT / "release/toolchain.env").read_text(), re.MULTILINE)
    if len(bootstrap) != 1 or bootstrap != pinned:
        raise ValueError("release/toolchain.env AETHER_REF must match bootstrap.sh AE_FETCH")
    bootstrap_aeb = re.findall(r'^AEB_REF="\$\{AEB_REF:-([^}]+)\}"$', (ROOT / "bootstrap.sh").read_text(), re.MULTILINE)
    pinned_aeb = re.findall(r"^AEB_REF=(\S+)$", (ROOT / "release/toolchain.env").read_text(), re.MULTILINE)
    if len(bootstrap_aeb) != 1 or bootstrap_aeb != pinned_aeb:
        raise ValueError("release/toolchain.env AEB_REF must match bootstrap.sh's default AEB_REF")


def checksum(path):
    if path.stat().st_size == 0:
        raise ValueError(f"empty artifact: {path.name}")
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    if (path.parent / (path.name + ".sha256")).read_text().split() != [digest, path.name]:
        raise ValueError(f"checksum mismatch: {path.name}")
    return digest


def check_artifacts(tag, dist):
    manifest = {}
    for line in (dist / "SHA256SUMS.txt").read_text().splitlines():
        digest, name = line.split()
        manifest[name.removeprefix("./")] = digest
    # The build stages ae-add/ separately; GitHub downloads assets into one directory.
    packages = dist / "ae-add" if (dist / "ae-add").is_dir() else dist
    for os_name, arch, extension in PLATFORMS:
        raw = dist / f"libservirtium_vcr-{tag}-{os_name}-{arch}.{extension}"
        digest = checksum(raw)
        if manifest.get(raw.name) != digest:
            raise ValueError(f"manifest mismatch: {raw.name}")
        if os_name == "linux":
            dynamic = subprocess.run(["readelf", "-d", str(raw)], check=True, capture_output=True, text=True).stdout
            needed = re.findall(r"\(NEEDED\).*?\[([^\]]+)\]", dynamic)
            expected = "libc.so" if arch.endswith("-musl") else "libc.so.6"
            other = "libc.so.6" if arch.endswith("-musl") else "libc.so"
            if expected not in needed or other in needed:
                raise ValueError(f"wrong Linux libc for {raw.name}: {needed}")
        package = packages / f"servirtium_vcr-{tag}-{os_name}-{arch}.{extension}"
        if checksum(package) != digest:
            raise ValueError(f"ae-add package differs from raw library: {package.name}")
        if os_name == "windows":
            imp = raw.parent / (raw.name + ".lib")
            if manifest.get(imp.name) != checksum(imp):
                raise ValueError(f"manifest mismatch: {imp.name}")
    toml = (packages / "aether.toml").read_text()
    if not re.search(r'^binary = "servirtium_vcr"$', toml, re.MULTILINE) or not re.search(r'^modules = "\."$', toml, re.MULTILINE):
        raise ValueError("ae-add manifest must export binary servirtium_vcr at modules = '.'")
    lib = ctypes.CDLL(str((dist / f"libservirtium_vcr-{tag}-linux-x86_64.so").resolve()))
    exports = re.findall(r"^(vcr_embed_\w+)\(", (ROOT / "core/embed.ae").read_text(), re.MULTILINE)
    if not exports:
        raise ValueError("no C ABI declarations found")
    for symbol in exports:
        getattr(lib, "aether_" + symbol)
    print(f"Verified nine libraries, Windows import libraries, nine ae-add packages, checksums, and {len(exports)} Linux ABI exports.")


def check_binding_packages(dist):
    """Verify the two multi-platform binding packages (opt-in, built only when
    RELEASE_BINDING_PACKAGES=1): the fat Java jar and the multi-RID .NET nupkg.
    Each must exist, be non-empty, and have a matching .sha256 sidecar."""
    jars = sorted(p for p in dist.glob("servirtium-vcr-*.jar")
                  if not p.name.endswith(("-sources.jar", "-javadoc.jar")))
    nupkgs = sorted(dist.glob("Servirtium.Vcr.*.nupkg"))
    if not jars:
        raise ValueError("no fat Java jar (servirtium-vcr-*.jar) in dist")
    if not nupkgs:
        raise ValueError("no multi-RID .NET nupkg (Servirtium.Vcr.*.nupkg) in dist")
    for pkg in (*jars, *nupkgs):
        checksum(pkg)
    print(f"Verified {len(jars)} fat Java jar(s) and {len(nupkgs)} multi-RID .NET nupkg(s) with checksums.")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("tag")
    parser.add_argument("--check-version", action="store_true")
    # --engine-only verifies only the engine libraries, ae-add set, and Linux
    # ABI (the default behaviour). It exists so release/build.sh can validate the
    # raw libraries BEFORE a binding package embeds one, without yet demanding the
    # jar/nupkg. --binding-packages ADDITIONALLY requires the two multi-platform
    # binding packages (fat Java jar + multi-RID .NET nupkg) to be present and
    # checksummed — use it after RELEASE_BINDING_PACKAGES=1 has produced them.
    parser.add_argument("--engine-only", action="store_true")
    parser.add_argument("--binding-packages", action="store_true")
    parser.add_argument("--dist", type=Path, default=ROOT / "release/dist")
    args = parser.parse_args()
    try:
        check_version(args.tag)
        if args.check_version:
            print(f"Release version and toolchain pins match {args.tag}.")
        else:
            check_artifacts(args.tag, args.dist)
            if args.binding_packages:
                check_binding_packages(args.dist)
    except (OSError, ValueError, AttributeError, subprocess.CalledProcessError) as error:
        parser.exit(1, f"release: {error}\n")


if __name__ == "__main__":
    main()
