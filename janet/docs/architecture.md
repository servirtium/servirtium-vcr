# Architecture

```
your test (janet test/*.janet)
   |  (servirtium/with-playback [vcr tape] ...)  /  (servirtium/with-record [vcr tape upstream] ...)
   v
servirtium/init.janet   -- thin Janet, this repo --
   |  - the idiomatic surface: options structs, keyword enums, with-* macros,
   |    structured errors
   |  - the FFI seam: one table of aether_vcr_embed_* signatures, resolved lazily
   v  Janet's built-in FFI (ffi/native, ffi/lookup, ffi/signature, ffi/call)
libservirtium_vcr.{so,dylib,dll}
   |  built: core/.build.ae -> core/embed.ae (the C ABI) over core/vcr.ae
   |  (parse, dispatch, record, mutate, emit, match) - pure Aether
   v
your SUT  <->  http://127.0.0.1:<port>
```

The Janet side owns none of the Servirtium semantics. It marshals strings and
ints across the ABI and presents an idiomatic fixture; everything that defines
Servirtium behaviour is the in-repo Aether core, shared with every other binding.

## Why the built-in FFI and not a native module

Janet has two ways to reach C: a native module (`declare-native` in jpm: C
source compiled against `janet.h` into a `.so`, like the Lua binding) and the
built-in FFI, available since Janet 1.23 (`ffi/native`, `ffi/lookup`,
`ffi/signature`, `ffi/call`, `ffi/pointer-buffer`). The FFI expresses this ABI
without a gap, so there is no C in the binding:

- strings in: `:string` arguments (Janet strings are NUL-terminated);
- ints and bools in/out: `:int32`;
- the opaque handle and every owned `char*` out: `:ptr` (a NULL return arrives
  as `nil`);
- no callbacks cross the boundary (named secrets are a loop of calls).

An owned `char*` is turned into a Janet string with `strlen` (found in the C
runtime through `(ffi/native nil)`) and `ffi/pointer-buffer`, copied, and then
released with `aether_vcr_embed_free_string` (`take` in `init.janet`, the one
place that rule lives). Declaring the return as `:string` would copy as well but
lose the pointer, leaking every returned string.

The cost of the FFI is that the module trusts the signatures it declares: a
wrong one is not a compile error. They are written once, in one table (`abi`),
copied from `core/embed.ae`; the suite calls every function in it at least once.
A native module would also have needed a C compiler and `janet.h` on every
consumer's machine (and a matching Janet), which the FFI avoids: the package is
pure Janet plus the prebuilt library.

## Library resolution

First match wins (the order every binding uses):

1. `(servirtium/set-library! path)` / the `:native-lib` option;
2. `SERVIRTIUM_VCR_LIB`;
3. `native/` inside the installed `servirtium/` module directory
   (`libservirtium_vcr.<so|dylib|dll>`, then `libservirtium_vcr.so`);
4. the bare file name, left to the OS loader.

Loading is lazy: `(import servirtium)` never fails for want of the library;
the first call that needs it does, with an error that says what to download.
