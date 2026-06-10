# Vue + Storybook + Selenium + Servirtium 2.0

A small demo that ties four things together:

- a **Vue** control (`src/PostForm.vue`) — a form that does an HTTP **POST** and
  shows the created record;
- **Storybook** — the same control presented in isolation
  (`src/PostForm.stories.js`), with a stubbed backend so it's interactive;
- **Selenium** — drives the control in **real headless Chrome**, *outside*
  Storybook, against the built standalone page;
- a **Servirtium 2.0** mock backend — the JavaScript binding (over the shared
  native engine) serving the page same-origin and **recording or replaying**
  the form's POST as a Markdown tape.

```
   Selenium → Chrome ──HTTP──▶  Servirtium VCR  ──/app/*──▶  built Vue page (static mount)
                                     │
                                     └──/api/messages──▶  record: stub upstream  ·  playback: tapes/post.md
```

Because the VCR serves the page itself, the browser's `POST /api/messages` is
**same-origin** — no CORS, no preflight — and lands straight on the VCR, which
either forwards-and-records it or replays it from the tape.

## Run

```sh
npm install                 # full (incl. Storybook)
npm run storybook           # see the control in Storybook (http://localhost:6006)
npm run build               # build the standalone page the Selenium test drives

# Servirtium mock backend, under Selenium (needs SERVIRTIUM_VCR_LIB → libservirtium_vcr.so):
npm run test:playback       # replay tapes/post.md  (offline; the CI path)
npm run test:record         # forward to a throwaway stub backend and (re)write the tape
```

Via the monorepo build (builds the engine + JS binding, installs lean, builds
the page, runs the Selenium playback):

```sh
aeb integration/vue-storybook/.tests.ae      # playback (offline)
aeb integration/vue-storybook/.record.ae     # re-record the tape (on-demand)
```

## How record vs playback is chosen

It's a choice of which script you run — the classic Servirtium split:

- **`record.cjs`** starts the VCR in *record* mode pointed at a throwaway stub
  upstream (`upstream.cjs`), drives the form once, and flushes `tapes/post.md`.
  Volatile browser request headers (`sec-ch-ua`, `User-Agent`, …) are stripped
  from the recording and the `Date` response header is redacted, so re-records
  stay byte-stable and playback isn't broken by a browser-version bump.
- **`playback.cjs`** starts the VCR in *playback* mode over the committed tape —
  no upstream, no network — and asserts the control shows the replayed result
  (`vcr.lastKind === Ok`).

`/favicon.ico` is marked `untaped` so the browser's incidental favicon fetch
doesn't land on the tape or consume the playback cursor.

## A second control: Good / Cheap / Fast (the backend is the source of truth)

`src/TripleChoice.vue` is the classic **pick any two** Venn — Good, Cheap, Fast,
a checkbox per circle — and it shows what a *recorded* backend buys you that a
faked one doesn't: **the UI renders only the server's answer, at the wire** —
never an optimistic local flip. The backend owns the "pick two" rule; the
control just posts each toggle and reflects whatever comes back (the pair label
— Slow / Expensive / Low Quality). There are two ways a backend can enforce
"pick two", and a recorded tape pins each one:

- `tapes/triple-pick-two.md` — **eviction.** Check Good, check Fast → "Expensive";
  then check Cheap → the server drops the oldest (`good:false`) and returns
  `cheap`+`fast` → "Low Quality". You watch a ticked box pop back off — the
  control's *unchecking* path, driven entirely by the recorded response.
- `tapes/triple-block-third.md` — **refusal.** Check Good, check Cheap, **check
  Fast → `409`** → Fast stays unchecked, status "Impossible", the centre of the
  Venn. The refusal is a literal `409` line in the committed Markdown.

The checkbox is a real `<input>` inside an SVG `<foreignObject>`, styled
`appearance:none` with a drawn tick so the checked state paints reliably (a
native glyph does not always render inside a foreignObject) while still being a
genuine checkbox that Selenium's `.isSelected()` reads.

```sh
npm run storybook        # the GoodCheapFast story is interactive (stubbed "pick two")
node triple-record.cjs   # (re)record both scenario tapes
node triple-playback.cjs # replay both, asserting checkbox state + status
```
```sh
aeb integration/vue-storybook/.triple.ae          # playback (offline)
aeb integration/vue-storybook/.triple_record.ae   # re-record (on-demand)
```

Note playback is **cursor-ordered**, so each scenario is a fixed sequence in its
own tape; the Selenium script drives the toggles in the recorded order.

## Notes

- The mock backend is the **JavaScript binding** in [`../../javascript`](../../javascript)
  (koffi over `libservirtium_vcr.so`) — the same engine all the bindings share.
- Storybook is the showcase (`npm run storybook`); the automated tests use the
  Vite-built standalone pages, not the Storybook dev server.
