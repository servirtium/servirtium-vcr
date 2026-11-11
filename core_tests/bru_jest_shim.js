// servirtium-vcr (MIT): just enough of Jest's API to run @usebruno/lang's
// own test files (core/bru/third_party/usebruno-lang-*/v2/tests) inside the
// QuickJS that core/bru.ae embeds, against the vendored parser. Loaded by
// core_tests/test_vcr_bru_upstream.ae after the glue and the parser.
//
// describe / it / test (nested, with beforeEach / afterEach), and expect
// with the matchers those files use: toBe, toEqual, toMatchObject,
// toContain, toHaveLength, toHaveProperty, toMatch, toBeDefined,
// toBeUndefined, toThrow, toMatchInlineSnapshot, and .not of each.
// Semantics follow Jest's where the tests depend on them: toEqual ignores
// properties whose value is undefined; toMatchInlineSnapshot compares a
// string as "..." against the snapshot with its added indentation removed.

var __jest_root = { name: '', tests: [], children: [], before: [], after: [], parent: null };
var __jest_cur = __jest_root;

function describe(name, fn) {
  var d = { name: name, tests: [], children: [], before: [], after: [], parent: __jest_cur };
  __jest_cur.children.push(d);
  var saved = __jest_cur;
  __jest_cur = d;
  try { fn(); } finally { __jest_cur = saved; }
}
function it(name, fn) { __jest_cur.tests.push({ name: name, fn: fn }); }
var test = it;
function beforeEach(fn) { __jest_cur.before.push(fn); }
function afterEach(fn) { __jest_cur.after.push(fn); }

function __jest_fmt(v) {
  try { var s = JSON.stringify(v); return s === undefined ? String(v) : (s.length > 300 ? s.substring(0, 300) + '...' : s); }
  catch (e) { return String(v); }
}

function __jest_isObj(v) { return v !== null && typeof v === 'object'; }

function __jest_equals(a, b) {
  if (Object.is(a, b)) return true;
  if (a instanceof RegExp && b instanceof RegExp) return String(a) === String(b);
  if (!__jest_isObj(a) || !__jest_isObj(b)) return false;
  if (Array.isArray(a) !== Array.isArray(b)) return false;
  if (Array.isArray(a)) {
    if (a.length !== b.length) return false;
    for (var i = 0; i < a.length; i++) if (!__jest_equals(a[i], b[i])) return false;
    return true;
  }
  var ka = Object.keys(a).filter(function (k) { return a[k] !== undefined; });
  var kb = Object.keys(b).filter(function (k) { return b[k] !== undefined; });
  if (ka.length !== kb.length) return false;
  for (var j = 0; j < ka.length; j++) {
    var k = ka[j];
    if (!Object.prototype.hasOwnProperty.call(b, k)) return false;
    if (!__jest_equals(a[k], b[k])) return false;
  }
  return true;
}

function __jest_subset(obj, sub) {
  if (!__jest_isObj(sub) || !__jest_isObj(obj)) return __jest_equals(obj, sub);
  if (Array.isArray(sub)) {
    if (!Array.isArray(obj) || obj.length !== sub.length) return false;
    for (var i = 0; i < sub.length; i++) if (!__jest_subset(obj[i], sub[i])) return false;
    return true;
  }
  var ks = Object.keys(sub);
  for (var j = 0; j < ks.length; j++) {
    var k = ks[j];
    if (!(k in obj)) return false;
    if (!__jest_subset(obj[k], sub[k])) return false;
  }
  return true;
}

// Jest's stripAddedIndentation for inline snapshots.
function __jest_dedent(snapshot) {
  var lines = snapshot.split('\n');
  if (lines.length <= 2) return snapshot;
  if (lines[0].trim() !== '' || lines[lines.length - 1].trim() !== '') return snapshot;
  var m = lines[1].match(/^[ \t]*/);
  var ind = m ? m[0] : '';
  for (var i = 1; i < lines.length - 1; i++) {
    if (lines[i].length > 0) {
      if (lines[i].indexOf(ind) !== 0) return snapshot;
      lines[i] = lines[i].substring(ind.length);
    }
  }
  lines[lines.length - 1] = '';
  return lines.slice(1, lines.length - 1).join('\n');
}

function __jest_prop(obj, path) {
  var parts = Array.isArray(path) ? path : String(path).split('.');
  var v = obj;
  for (var i = 0; i < parts.length; i++) {
    if (v === null || v === undefined) return { has: false };
    if (!(typeof v === 'object' || typeof v === 'function') || !(parts[i] in Object(v))) return { has: false };
    v = v[parts[i]];
  }
  return { has: true, value: v };
}

function expect(received) {
  function make(neg) {
    function check(ok, what) {
      if (neg ? ok : !ok) throw new Error('expect(' + __jest_fmt(received) + ')' + (neg ? '.not' : '') + '.' + what);
    }
    var m = {
      toBe: function (e) { check(Object.is(received, e), 'toBe(' + __jest_fmt(e) + ')'); },
      toEqual: function (e) { check(__jest_equals(received, e), 'toEqual(' + __jest_fmt(e) + ')'); },
      toStrictEqual: function (e) { check(__jest_equals(received, e), 'toStrictEqual(' + __jest_fmt(e) + ')'); },
      toMatchObject: function (e) { check(__jest_subset(received, e), 'toMatchObject(' + __jest_fmt(e) + ')'); },
      toContain: function (e) {
        var ok = (typeof received === 'string') ? received.indexOf(e) >= 0 : (received != null && Array.prototype.indexOf.call(received, e) >= 0);
        check(ok, 'toContain(' + __jest_fmt(e) + ')');
      },
      toHaveLength: function (n) { check(received != null && received.length === n, 'toHaveLength(' + n + ')'); },
      toHaveProperty: function (p, v) {
        var r = __jest_prop(received, p);
        var ok = r.has && (arguments.length < 2 || __jest_equals(r.value, v));
        check(ok, 'toHaveProperty(' + __jest_fmt(p) + (arguments.length < 2 ? '' : ', ' + __jest_fmt(v)) + ')');
      },
      toMatch: function (e) {
        var ok = (e instanceof RegExp) ? e.test(received) : String(received).indexOf(e) >= 0;
        check(ok, 'toMatch(' + String(e) + ')');
      },
      toBeDefined: function () { check(received !== undefined, 'toBeDefined()'); },
      toBeUndefined: function () { check(received === undefined, 'toBeUndefined()'); },
      toBeNull: function () { check(received === null, 'toBeNull()'); },
      toBeTruthy: function () { check(!!received, 'toBeTruthy()'); },
      toBeFalsy: function () { check(!received, 'toBeFalsy()'); },
      toThrow: function (e) {
        var threw = false, err = null;
        try { received(); } catch (x) { threw = true; err = x; }
        var ok = threw;
        if (threw && e !== undefined) {
          var msg = err && err.message !== undefined ? err.message : String(err);
          if (e instanceof RegExp) ok = e.test(msg);
          else if (typeof e === 'string') ok = msg.indexOf(e) >= 0;
          else if (typeof e === 'function') ok = err instanceof e;
        }
        check(ok, 'toThrow(' + (e === undefined ? '' : String(e)) + ')');
      },
      toMatchInlineSnapshot: function (snap) {
        var got = (typeof received === 'string') ? '"' + received + '"' : JSON.stringify(received, null, 2);
        check(got === __jest_dedent(snap), 'toMatchInlineSnapshot(...): got ' + __jest_fmt(got));
      }
    };
    return m;
  }
  var r = make(false);
  r.not = make(true);
  return r;
}

// Run every registered test; the summary as JSON.
function __jest_run() {
  var passed = 0, failed = 0, failures = [];
  function walk(d, prefix, befores, afters) {
    var b = befores.concat(d.before), a = d.after.concat(afters);
    var name = prefix === '' ? d.name : (d.name === '' ? prefix : prefix + ' > ' + d.name);
    for (var i = 0; i < d.tests.length; i++) {
      var t = d.tests[i];
      try {
        for (var j = 0; j < b.length; j++) b[j]();
        t.fn();
        for (var k = 0; k < a.length; k++) a[k]();
        passed++;
      } catch (e) {
        failed++;
        failures.push((name === '' ? '' : name + ' > ') + t.name + ': ' + (e && e.message ? e.message : String(e)));
      }
    }
    for (var c = 0; c < d.children.length; c++) walk(d.children[c], name, b, a);
  }
  walk(__jest_root, '', [], []);
  return JSON.stringify({ passed: passed, failed: failed, failures: failures });
}

// Node's Buffer, the little one test uses: from(byte array), from(base64
// string, 'base64'), toString('base64'), equals.
var __B64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
function __ShimBuffer(bytes) { this.bytes = bytes; }
__ShimBuffer.prototype.toString = function (enc) {
  if (enc !== 'base64') throw new Error('shim Buffer: only base64');
  var b = this.bytes, out = '';
  for (var i = 0; i < b.length; i += 3) {
    var n = (b[i] << 16) | ((i + 1 < b.length ? b[i + 1] : 0) << 8) | (i + 2 < b.length ? b[i + 2] : 0);
    out += __B64[(n >> 18) & 63] + __B64[(n >> 12) & 63] + (i + 1 < b.length ? __B64[(n >> 6) & 63] : '=') + (i + 2 < b.length ? __B64[n & 63] : '=');
  }
  return out;
};
__ShimBuffer.prototype.equals = function (o) {
  if (o.bytes.length !== this.bytes.length) return false;
  for (var i = 0; i < this.bytes.length; i++) if (o.bytes[i] !== this.bytes[i]) return false;
  return true;
};
var Buffer = {
  from: function (v, enc) {
    if (Array.isArray(v)) return new __ShimBuffer(v.slice());
    if (enc !== 'base64') throw new Error('shim Buffer: only arrays and base64 strings');
    var s = String(v).replace(/=+$/, ''), out = [], acc = 0, bits = 0;
    for (var i = 0; i < s.length; i++) {
      acc = (acc << 6) | __B64.indexOf(s[i]); bits += 6;
      if (bits >= 8) { bits -= 8; out.push((acc >> bits) & 255); }
    }
    return new __ShimBuffer(out);
  }
};
