// Drives the vendored TodoBackend Mocha spec and publishes a result Selenium
// can read. Mirrors the upstream setup.js (bdd, 30s timeout, query-string API
// root, chai-as-promised self-registers via its script tag) but instead of a
// "run tests" button it auto-runs and signals completion on window.
mocha.setup('bdd');
mocha.slow('5s');
mocha.timeout('30s');
window.expect = chai.expect;

window.__mochaDone = false;
window.__mochaPasses = -1;
window.__mochaFailures = -1;
window.__mochaFailMsgs = [];

var apiRoot = window.location.search.substr(1);

if (apiRoot) {
  defineSpecsFor(apiRoot);
  var runner = mocha.run();
  runner.on('fail', function (test, err) {
    var title = test.fullTitle ? test.fullTitle() : test.title;
    window.__mochaFailMsgs.push(title + ' :: ' + (err && err.message));
  });
  runner.on('end', function () {
    window.__mochaPasses = runner.stats.passes;
    window.__mochaFailures = runner.stats.failures;
    window.__mochaDone = true;
  });
} else {
  window.__mochaDone = true;
  window.__mochaFailMsgs.push('no apiRoot in query string');
}
