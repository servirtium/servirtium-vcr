# Sourced by build.sh and the .ae leaves: find the Lua 5.4 interpreter and its
# pkg-config module under the names distros use (Debian/Arch: lua5.4 / lua5.4;
# Alpine: lua5.4; FreeBSD pkg: binary lua54, module lua-5.4).
LUA_BIN=lua5.4
for c in lua5.4 lua54 lua-5.4; do
  if command -v "$c" >/dev/null 2>&1; then LUA_BIN=$c; break; fi
done
LUA_PC=lua5.4
for c in lua5.4 lua-5.4 lua54; do
  if pkg-config --exists "$c" 2>/dev/null; then LUA_PC=$c; break; fi
done
export LUA_BIN LUA_PC
