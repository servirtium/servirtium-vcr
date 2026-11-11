// servirtium-vcr: the few lines of JavaScript that let Bruno's own .bru
// parser (@usebruno/lang, vendored under third_party/, unchanged) run inside the
// QuickJS that core/bru.ae embeds. MIT, part of servirtium-vcr.
//
// QuickJS has no CommonJS. The vendored files are CommonJS modules, so each
// is wrapped by core/bru.ae as
//     __svcr_define("<name>", function (module, exports, require, __dirname) { <file> });
// and `require` resolves names the way Node would for this small tree:
// "ohm-js" and "lodash" by package name, "./x" and "../x" relative to the
// requiring module, ".js" optional, a ".json" fixture by its full name.
//
// Everything after parsing (variables, headers, file names, the tape) is
// done in Aether: this file only hands the parser's JSON back.

var __svcr_factories = {};

// The parser reports some problems on the console (a malformed example:
// console.error, then it carries on with { error }). QuickJS here has no
// console of its own; keep the messages, for the host to show if it likes.
var __svcr_messages = [];
var console = {
  log: function () { __svcr_messages.push(Array.prototype.join.call(arguments, ' ')); },
  warn: function () { __svcr_messages.push(Array.prototype.join.call(arguments, ' ')); },
  error: function () { __svcr_messages.push(Array.prototype.join.call(arguments, ' ')); }
};
var __svcr_cache = {};

function __svcr_define(name, factory) {
  __svcr_factories[name] = factory;
}

// A JSON file as a module (Bruno's tests require fixtures/*.json).
function __svcr_define_json(name, text) {
  __svcr_factories[name] = function (module) { module.exports = JSON.parse(text); };
}

function __svcr_dirname(name) {
  var i = name.lastIndexOf('/');
  return i < 0 ? '' : name.substring(0, i);
}

function __svcr_resolve(from, req) {
  if (req.charAt(0) !== '.') return req;
  var parts = __svcr_dirname(from) === '' ? [] : __svcr_dirname(from).split('/');
  var segs = req.split('/');
  for (var i = 0; i < segs.length; i++) {
    var s = segs[i];
    if (s === '.' || s === '') continue;
    if (s === '..') parts.pop(); else parts.push(s);
  }
  var name = parts.join('/');
  if (name.length > 3 && name.substring(name.length - 3) === '.js') name = name.substring(0, name.length - 3);
  return name;
}

function __svcr_require_from(from) {
  return function (req) {
    var name = __svcr_resolve(from, req);
    if (Object.prototype.hasOwnProperty.call(__svcr_cache, name)) return __svcr_cache[name].exports;
    var f = __svcr_factories[name];
    if (!f) throw new Error("require: no module '" + req + "' (as '" + name + "') from '" + from + "'");
    var module = { exports: {} };
    __svcr_cache[name] = module;
    f(module, module.exports, __svcr_require_from(name), __svcr_dirname(name));
    return module.exports;
  };
}

var __svcr_require = __svcr_require_from('');

// kind: "request" (a request .bru), "collection" (collection.bru or a
// folder.bru), "environment" (environments/*.bru). Returns the parser's
// result as JSON text; a parse error throws, and the host reports it.
function __svcr_parse(kind, text) {
  var mod;
  if (kind === 'request') mod = __svcr_require('v2/src/bruToJson');
  else if (kind === 'collection') mod = __svcr_require('v2/src/collectionBruToJson');
  else if (kind === 'environment') mod = __svcr_require('v2/src/envToJson');
  else throw new Error('unknown .bru kind: ' + kind);
  return JSON.stringify(mod(text));
}
