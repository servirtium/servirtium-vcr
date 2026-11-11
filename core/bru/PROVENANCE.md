# Bruno's `.bru` parser, vendored

`servirtium convert bru` and `servirtium import-bru` read `.bru` files with
Bruno's own parser, run in QuickJS embedded in the CLI and in
libservirtium_vcr (`core/bru.ae`, by aether's engine module `contrib.quickjs`,
which every Aether release ships). Everything after parsing is Aether
(`core/bru_convert.ae`). This directory holds the parser's JavaScript,
unchanged, with each package's licence.

## What is here

| Directory | Package | Version | Licence | npm integrity |
|---|---|---|---|---|
| `third_party/usebruno-lang-0.41.0/` | [`@usebruno/lang`](https://www.npmjs.com/package/@usebruno/lang) (`packages/bruno-lang` in [usebruno/bruno](https://github.com/usebruno/bruno), git head `55f5a91f15ac456e8f5b7adc199c2a4aea3f0907`) | 0.41.0 | MIT, `license.md` (Anoop M D, Anusree P S and Contributors) | `sha512-7goZs70RVrZ4ZA+M2aHF+2RmgWbZIa6hqqtAdT2YEdM9ZcLMzCdfR3M6dAnAH2MG2i+r62guqG0UdVTxHO+nlw==` |
| `third_party/ohm-js-16.6.0/` | [`ohm-js`](https://www.npmjs.com/package/ohm-js) ([ohmjs/ohm](https://github.com/ohmjs/ohm), tag `v16.6.0` = `b7dd559a72c390c2c53980ef0695216ac684f3de`) | 16.6.0 | MIT, `LICENSE` (Alessandro Warth and the Ohm project contributors) | `sha512-X9P4koSGa7swgVQ0gt71UCYtkAQGOjciJPJAz74kDxWt8nXbH5HrDOQG6qBDH7SR40ktNv4x61BwpTDE9q4lRA==` |
| `third_party/lodash-4.18.1/` | [`lodash`](https://www.npmjs.com/package/lodash) | 4.18.1 (the exact version `@usebruno/lang` 0.41.0 pins) | MIT, `LICENSE` (OpenJS Foundation and other contributors; based on Underscore.js) | `sha512-dMInicTPVE8d1e5otfwmmjlxkZoUpiVLwyeTdUsi/Caj/gfzzblBcCE5sRHV/AsjuCmxWrte2TNGSYuCeCq+0Q==` |

From each npm tarball (`npm pack <package>@<version>`, checked against the
integrity above), byte for byte:

- `@usebruno/lang`: `license.md`, `package.json`, `readme.md` and the whole
  `v2/` tree (`v2/src`, the parser; `v2/tests`, Bruno's own tests and
  fixtures). Not `v1/` or `src/index.js` (the old v1 parser, unused).
- `ohm-js`: `dist/ohm.cjs` (the CommonJS build) and `package.json`. The npm
  tarball has no licence file, so `LICENSE` is the repository's, from tag
  `v16.6.0` (`https://raw.githubusercontent.com/ohmjs/ohm/v16.6.0/LICENSE`).
  `ohm.cjs` includes Unicode category tables derived from
  `mathiasbynens/unicode-9.0.0` (MIT), as ohm's own `third_party/` says.
- `lodash`: `lodash.min.js` (lodash's own minified build, with its licence
  header), `LICENSE` and `package.json`.

Not vendored, though `@usebruno/lang`'s `package.json` lists them:
`arcsecond` (MIT; only the v1 parser uses it) and `dotenv` (BSD-2-Clause; only
`v2/src/dotenvToJson.js` uses it, for `.env` files, which nothing here reads).
Nothing that runs requires either; `test_vcr_bru_upstream` skips the one test
file that needs `dotenv`.

## How it is built in

- `glue.js` (ours, MIT): a CommonJS `require` for the vendored files, a
  `console` that keeps messages, and `__svcr_parse(kind, text)`.
- `gen.sh` writes `core/bru_js.ae`: the glue and the runtime set of modules
  (ohm, lodash, and the `@usebruno/lang` files `bruToJson`,
  `collectionBruToJson`, `envToJson` reach) as Aether heredoc strings, byte
  for byte. `core/bru.ae` evaluates them in a fresh QuickJS runtime per
  parser. Bruno's serialisers (`jsonToBru` and friends) and tests stay on
  disk; only the drift test loads them.
- Size (macOS arm64, Aether 0.908.0): the `servirtium` CLI went from
  1,056,192 to 2,668,288 bytes and `libservirtium_vcr.so` from 1,798,016 to
  3,412,608 bytes, about 1.6 MB each (QuickJS's engine and about 380 KB of
  JavaScript).

## Drift guard

`core_tests/test_vcr_bru_upstream.ae` runs Bruno's own test files from
`third_party/usebruno-lang-*/v2/tests` (463 tests in 0.41.0, every spec file but
`dotenvToJson.spec.js`) against the embedded parser, under a small Jest
stand-in (`core_tests/bru_jest_shim.js`), and fails if `core/bru_js.ae` is
not what `gen.sh` makes from this directory.

## Refreshing

1. `npm pack @usebruno/lang@<v>`, then the `ohm-js` and `lodash` versions its
   `package.json` asks for; check each tarball's integrity
   (`npm view <pkg>@<v> dist.integrity`).
2. Replace the matching `third_party/<name>-<version>/` directories with the files
   listed above (new directory names for new versions), and the licence files.
3. Update the paths in `gen.sh`, `BRU_PARSER_VERSION` and `BRU_PARSER_DIR` in
   `core/bru.ae`, `PKG` in `core_tests/test_vcr_bru_upstream.ae`, and this
   file.
4. `sh core/bru/gen.sh`, then `aeb core_tests/.tests.ae`: Bruno's tests must
   pass in our QuickJS, and `core_tests/test_vcr_bru_convert.ae` and
   `bruno_import_demo` must still pass. If Bruno's tests need more of Jest or
   Node than the shim has, extend the shim; never edit a vendored file.
