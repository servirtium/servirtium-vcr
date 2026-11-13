/* playback_test.c — playback facts for the C client.
 *
 * Replays the canonical one-interaction tape (GET /ok -> 200 text/plain
 * "ok-body") — the same tape every other binding in this repo replays
 * byte-for-byte — and asserts the body, a clean match, the diagnostics, and
 * the ergonomic layer's own contracts (owned strings, a failed open reporting
 * why, cursor reset). No test framework: a plain main() returning 0 on
 * success, which is what c.tests treats as a pass.
 *
 * The tape path comes in as argv[1] (c/.tests.ae passes the absolute path, so
 * the binary's working directory doesn't matter); it falls back to the
 * repo-relative default for a by-hand run from c/.
 */
#include "servirtium.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

static int failures = 0;

static void ck(const char *label, int cond) {
    if (cond) {
        printf("  ok: %s\n", label);
    } else {
        printf("FAIL: %s\n", label);
        failures++;
    }
}

/* GET a URL with curl and return the body with any trailing newline trimmed.
 * Caller frees. NULL on a pipe failure. */
static char *http_get(const char *url) {
    char cmd[1024];
    char buf[4096];
    FILE *p;
    size_t n;

    snprintf(cmd, sizeof(cmd), "curl -g -s -S '%s'", url);
    p = popen(cmd, "r");
    if (p == NULL) return NULL;
    n = fread(buf, 1, sizeof(buf) - 1, p);
    pclose(p);
    buf[n] = '\0';
    while (n > 0 && (buf[n - 1] == '\n' || buf[n - 1] == '\r')) buf[--n] = '\0';
    return strdup(buf);
}

/* As http_get, sending a session cookie of the caller's own. */
static char *http_get_cookie(const char *url) {
    char cmd[1024], buf[4096];
    FILE *p; size_t n;
    snprintf(cmd, sizeof(cmd), "curl -g -s -S -H 'Cookie: sid=live-session' '%s'", url);
    p = popen(cmd, "r");
    if (p == NULL) return NULL;
    n = fread(buf, 1, sizeof(buf) - 1, p);
    pclose(p);
    buf[n] = '\0';
    while (n > 0 && (buf[n - 1] == '\n' || buf[n - 1] == '\r')) buf[--n] = '\0';
    return strdup(buf);
}

/* The HTTP status curl reports for a URL, as a string ("200", "404", ...). */
static char *http_status(const char *url) {
    char cmd[1024];
    snprintf(cmd, sizeof(cmd), "curl -s -o /dev/null -w '%%{http_code}' '%s'", url);
    {
        char buf[64];
        FILE *p = popen(cmd, "r");
        size_t n;
        if (p == NULL) return NULL;
        n = fread(buf, 1, sizeof(buf) - 1, p);
        pclose(p);
        buf[n] = '\0';
        return strdup(buf);
    }
}

static const char *secret_names[] = {"ACCOUNTS_PASSWORD", "BILLING_PASSWORD", "SHIPPING_PASSWORD", "SUPPORT_PASSWORD"};
static const char *secret_services[] = {"accounts", "billing", "shipping", "support"};
static const char *redact_secret(const char *key, const sv_secret_request *request, void *context) {
    int i;
    if (strcmp(key, "password")) return NULL;
    ++*(int *)context;
    ck("secret metadata", request->field_path[0] != 0);
    for (i=0; i<4; ++i) if (strncmp(request->path+1, secret_services[i], strlen(secret_services[i]))==0) return secret_names[i];
    return NULL;
}
static const char *resolve_secret(const char *token, void *context) {
    static char value[128]; int i; (void)context;
    for (i=0; i<4; ++i) if (!strcmp(token, secret_names[i])) {
        snprintf(value, sizeof value, "pw-%s&secret", secret_services[i]); return value;
    }
    return NULL;
}
static void named_secrets(const char *tape) {
    char directory[]="/tmp/vcr-secrets-c-XXXXXX", fixture[4096], command[16384], upstream[256], target[4096];
    char *part; FILE *pipe; sv_vcr *rec, *replay; sv_str value; int count=0;
    ck("secret temp dir", mkdtemp(directory)!=NULL);
    snprintf(fixture,sizeof fixture,"%s",tape);
    part=strrchr(fixture,'/'); if(part)*part=0; part=strrchr(fixture,'/'); if(part)*part=0; part=strrchr(fixture,'/'); if(part)*part=0;
    strcat(fixture,"/target/test-tools/secret_fixture");
    snprintf(command,sizeof command,"'%s' start '%s'",fixture,directory);
    pipe=popen(command,"r"); if(!pipe){ck("secret upstream",0);return;}
    upstream[0]=0; fgets(upstream,sizeof upstream,pipe); ck("secret start",pclose(pipe)==0); upstream[strcspn(upstream,"\r\n")]=0;
    snprintf(target,sizeof target,"%s/tape.md",directory);
    rec=sv_record(target,upstream, NULL); if(!rec){ck("secret record open",0);return;}
    sv_secret_redactor(rec,redact_secret,&count); value=sv_base_url(rec);
    snprintf(command,sizeof command,"'%s' drive '%s'",fixture,value.ptr); sv_free(value);
    ck("secret recording driver",system(command)==0); ck("deferred callback",count==0);
    value=sv_close_and_flush(rec,NULL); ck("secret flush",value.len==0); sv_free(value); ck("secret count",count==20);
    snprintf(command,sizeof command,"'%s' check '%s'",fixture,target); ck("secret tape",system(command)==0);
    replay=sv_playback_with_secrets(target,"127.0.0.1",0,resolve_secret,NULL,NULL); if(!replay){ck("secret playback open",0);return;}
    value=sv_base_url(replay); snprintf(command,sizeof command,"'%s' drive '%s'",fixture,value.ptr); sv_free(value);
    ck("secret playback driver",system(command)==0); value=sv_assert_no_mismatches(replay); ck("secret matches",value.len==0); sv_free(value); sv_close(replay);
    unlink(target); snprintf(target,sizeof target,"%s/url",directory); unlink(target); snprintf(target,sizeof target,"%s/done",directory); unlink(target); rmdir(directory);
}


/* Stable ordering and playback range, through the shared core_tests tapes. A
 * playback handle serves a JSON body with unsorted keys; a record handle
 * proxies it. */
static void stable_order_and_range(const char *tape) {
    char root[4096], upstream_tape[8192], range_tape[8192], out[4096], url[512], content[8192];
    char dir[] = "/tmp/vcr-order-c-XXXXXX";
    char *part, *body; int i; FILE *f; size_t n; sv_vcr *up, *rec, *rp; sv_str base, v;
    snprintf(root, sizeof root, "%s", tape);
    for (i=0; i<3; ++i) { part = strrchr(root, '/'); if (part) *part = '\0'; }
    snprintf(upstream_tape, sizeof upstream_tape, "%s/core_tests/tapes/stable_order_upstream.tape", root);
    snprintf(range_tape, sizeof range_tape, "%s/core_tests/tapes/playback_range.tape", root);
    ck("order temp dir", mkdtemp(dir) != NULL);

    /* (a) sort_json_keys + pretty_json writes sorted, pretty JSON */
    up = sv_playback(upstream_tape, NULL);
    ck("order upstream opens", up != NULL); if (!up) return;
    base = sv_base_url(up);
    snprintf(out, sizeof out, "%s/sorted.md", dir);
    rec = sv_record(out, base.ptr, NULL); sv_free(base);
    ck("order recorder opens", rec != NULL); if (!rec) return;
    sv_set_sort_json_keys(rec, 1); sv_set_pretty_json(rec, 2);
    ck("get_sort_json_keys reads back", sv_get_sort_json_keys(rec) == 1);
    v = sv_sort_json_array(rec, "/list", ""); ck("sort_json_array accepted", v.len == 0); sv_free(v);
    v = sv_sort_json_array_at(rec, "/data", "/list", "id"); ck("sort_json_array_at accepted", v.len == 0); sv_free(v);
    sv_set_sort_response_headers(rec, 1);
    ck("get_sort_response_headers reads back", sv_get_sort_response_headers(rec) == 1);
    v = sv_sort_header_value(rec, "Allow"); ck("sort_header_value accepted", v.len == 0); sv_free(v);
    v = sv_base_url(rec); snprintf(url, sizeof url, "%s/data", v.ptr); sv_free(v);
    body = http_get(url); free(body);
    v = sv_close_and_flush(rec, NULL); ck("sorted flush ok", v.len == 0); sv_free(v);
    f = fopen(out, "r"); n = 0; if (f) { n = fread(content, 1, sizeof(content) - 1, f); fclose(f); } content[n] = '\0';
    ck("keys sorted and pretty-printed",
       strstr(content, "{\n  \"apple\": {\n    \"banana\": 3,\n    \"mango\": 2\n  },\n  \"zebra\": 1\n}") != NULL);

    /* (b) sort_json_keys without pretty_json is refused at emit time */
    snprintf(out, sizeof out, "%s/refused.md", dir);
    base = sv_base_url(up);
    rec = sv_record(out, base.ptr, NULL); sv_free(base);
    sv_set_sort_json_keys(rec, 1);
    v = sv_base_url(rec); snprintf(url, sizeof url, "%s/data", v.ptr); sv_free(v);
    sv_reset_cursor(up);
    body = http_get(url); free(body);
    v = sv_close_and_flush(rec, NULL);
    ck("sort without pretty_json is refused", v.len > 0 && strstr(v.ptr, "sort_json_keys needs pretty_json") != NULL);
    sv_free(v);
    f = fopen(out, "r");
    ck("nothing written when refused", f == NULL);
    if (f) fclose(f);
    sv_close(up);

    /* (c) playback range: the test brings its own cookie and skips the login */
    rp = sv_playback(range_tape, NULL);
    ck("range playback opens", rp != NULL); if (!rp) return;
    ck("no range by default", sv_get_playback_range_from(rp) == -1 && sv_get_playback_range_to(rp) == -1);
    v = sv_redact_credentials(rp); sv_free(v);
    sv_strict_ignore_common_headers(rp);
    v = sv_set_playback_range(rp, 4, 6); ck("range 4..6 accepted", v.len == 0); sv_free(v);
    ck("range reads back", sv_get_playback_range_from(rp) == 4 && sv_get_playback_range_to(rp) == 6);
    base = sv_base_url(rp);
    snprintf(url, sizeof url, "%s/checkout/{{uuid-1}}/card", base.ptr);
    body = http_get_cookie(url);
    ck("range serves the first interaction in the range", body != NULL && strcmp(body, "card-form") == 0);
    ck("served interaction 4", sv_last_index(rp) == 4);
    free(body);
    snprintf(url, sizeof url, "%s/login", base.ptr); sv_free(base);
    body = http_get_cookie(url);
    ck("a skipped interaction is not served", body != NULL && strcmp(body, "login-form") != 0);
    v = sv_last_error(rp);
    ck("skipped interaction is named as outside the range", strstr(v.ptr, "outside the playback range") != NULL);
    sv_free(v); free(body);
    v = sv_set_playback_range(rp, 9, -1); ck("bad range refused", v.len > 0); sv_free(v);
    sv_clear_playback_range(rp);
    ck("cleared range", sv_get_playback_range_from(rp) == -1);
    sv_close(rp);
    up = sv_playback(upstream_tape, NULL);
    base = sv_base_url(up);
    snprintf(out, sizeof out, "%s/range.md", dir);
    rec = sv_record(out, base.ptr, NULL); sv_free(base);
    v = sv_set_playback_range(rec, 0, 1);
    ck("record handle refuses a playback range", v.len > 0); sv_free(v);
    sv_close(rec); sv_close(up);
    { char cmd[8192]; snprintf(cmd, sizeof cmd, "rm -rf '%s'", dir); (void)system(cmd); }
}

/* Volatile values (docs/volatile-values.md) through the shared
 * core_tests/volatile tapes and the volatile_fixture driver. */
static int run_fixture(const char *root, const char *mode, const char *base) {
    char cmd[16384];
    snprintf(cmd, sizeof cmd, "'%s/target/test-tools/volatile_fixture' %s '%s'", root, mode, base);
    return system(cmd);
}

static const char *volatile_path_buf(const char *root, const char *tape) {
    static char path[8192];
    snprintf(path, sizeof path, "%s/core_tests/volatile/%s", root, tape);
    return path;
}

static sv_vcr *volatile_open(const char *root, const char *tape) {
    char path[8192];
    snprintf(path, sizeof path, "%s/core_tests/volatile/%s", root, tape);
    return sv_playback(path, NULL);
}

static int has(sv_str s, const char *needle) { int r = s.ptr != NULL && strstr(s.ptr, needle) != NULL; sv_free(s); return r; }

static void volatile_values_tests(const char *tape) {
    char root[4096], profile[8192];
    char *part; int i; sv_vcr *v; sv_str b, e;
    snprintf(root, sizeof root, "%s", tape);
    for (i=0; i<3; ++i) { part = strrchr(root, '/'); if (part) *part = '\0'; }
    snprintf(profile, sizeof profile, "%s/core_tests/volatile/profile.md", root);

    /* 1. spec tests 1+6: the tape's own block, pretty_xml, no rules in code */
    v = volatile_open(root, "wcf.md");
    ck("volatile wcf open", v != NULL);
    if (v) {
        sv_set_pretty_xml(v, 2);
        b = sv_base_url(v);
        ck("volatile wcf driver", run_fixture(root, "wcf", b.ptr) == 0);
        sv_free(b);
        ck("volatile report has binding", has(sv_volatile_report(v), "binding: {{messageId-1}} = "));
        sv_close(v);
    }

    /* 2. spec test 6: a profile file */
    v = volatile_open(root, "wcf_plain.md");
    ck("volatile plain open", v != NULL);
    if (v) {
        sv_set_pretty_xml(v, 2);
        e = sv_volatile_profile(v, profile);
        ck("volatile_profile file ok", e.len == 0); sv_free(e);
        b = sv_base_url(v);
        ck("volatile profile-file driver", run_fixture(root, "wcf", b.ptr) == 0);
        sv_free(b);
        sv_close(v);
    }

    /* 3. rules in code */
    v = volatile_open(root, "wcf_plain.md");
    ck("volatile rules open", v != NULL);
    if (v) {
        sv_set_pretty_xml(v, 2);
        e = sv_volatile_rule(v, "request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"); ck("rule 1 ok", e.len == 0); sv_free(e);
        e = sv_volatile_rule(v, "request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/"); ck("rule 2 ok", e.len == 0); sv_free(e);
        e = sv_volatile_rule(v, "request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;"); ck("rule 3 ok", e.len == 0); sv_free(e);
        e = sv_volatile_rule(v, "response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>"); ck("rule 4 ok", e.len == 0); sv_free(e);
        b = sv_base_url(v);
        ck("volatile rules driver", run_fixture(root, "wcf", b.ptr) == 0);
        sv_free(b);
        sv_close(v);
    }

    /* 4. markers */
    v = sv_playback_unstarted(volatile_path_buf(root, "wcf_dollar.md"), NULL);
    ck("volatile dollar open", v != NULL);
    if (v) {
        sv_set_pretty_xml(v, 2);
        e = sv_volatile_markers(v, SV_MARKERS_DOLLAR_CURLY); ck("markers ok", e.len == 0); sv_free(e);
        e = sv_start(v); ck("dollar start", e.len == 0); if (e.len) printf("  start: %s\n", e.ptr); sv_free(e);
        b = sv_base_url(v);
        ck("volatile dollar driver", run_fixture(root, "wcf", b.ptr) == 0);
        sv_free(b);
        sv_close(v);
    }
    {   /* the same tape with the default markers fails start */
        char path[8192]; sv_str err = {0};
        snprintf(path, sizeof path, "%s/core_tests/volatile/wcf_dollar.md", root);
        v = sv_playback(path, &err);
        ck("default markers on a DollarCurly tape fail start", v == NULL && err.ptr != NULL && strstr(err.ptr, "DollarCurly") != NULL);
        if (!(v == NULL && err.ptr != NULL && strstr(err.ptr, "DollarCurly") != NULL)) printf("  got: %s\n", err.ptr ? err.ptr : "(none)");
        sv_free(err);
        if (v) sv_close(v);
    }

    /* 5. spec test 2 */
    v = volatile_open(root, "cases.md");
    ck("volatile cases open", v != NULL);
    if (v) {
        b = sv_base_url(v);
        ck("volatile cases driver", run_fixture(root, "cases", b.ptr) == 0);
        sv_reset_cursor(v);
        ck("volatile cases-mismatch driver", run_fixture(root, "cases-mismatch", b.ptr) == 0);
        sv_free(b);
        ck("volatile last error shows binding", has(sv_last_error_ex(v, 0), "{{caseId-1}} = 42"));
        sv_free(sv_last_error_ex(v, 1));
        sv_close(v);
    }

    /* 6. bind */
    {
        char path[8192]; sv_str err = {0};
        snprintf(path, sizeof path, "%s/core_tests/volatile/cases_recorded.md", root);
        v = sv_playback(path, &err);
        ck("cases_recorded without a bind fails start", v == NULL && err.ptr != NULL && strstr(err.ptr, "caseId") != NULL);
        sv_free(err);
        if (v) sv_close(v);
    }
    v = sv_playback_unstarted(volatile_path_buf(root, "cases_recorded.md"), NULL);
    ck("cases_recorded opens unstarted", v != NULL);
    if (v) {
        e = sv_start(v);
        ck("start without a bind fails", e.len > 0 && strstr(e.ptr, "caseId") != NULL); sv_free(e);
        e = sv_bind(v, "caseId", "42"); ck("bind ok", e.len == 0); sv_free(e);
        e = sv_start(v); ck("start with a bind", e.len == 0); sv_free(e);
        b = sv_base_url(v);
        ck("volatile bind driver", run_fixture(root, "cases", b.ptr) == 0);
        sv_free(b);
        sv_close(v);
    }

    /* 7. errors: a setter returns the start-time error itself */
    v = volatile_open(root, "cases.md");
    ck("volatile errors open", v != NULL);
    if (v) {
        ck("no placeholder", has(sv_volatile_rule(v, "request body", "no placeholder"), "needs at least one placeholder"));
        sv_close(v);
    }
    v = volatile_open(root, "cases.md");
    if (v) {
        e = sv_volatile_rule(v, "response body", "\"caseId\":\"{{id}}\"");
        ck("conflicts with (tape)", e.ptr != NULL && strstr(e.ptr, "conflicts with") != NULL && strstr(e.ptr, "(tape)") != NULL);
        sv_free(e);
        sv_close(v);
    }
    v = volatile_open(root, "cases.md");
    if (v) {
        e = sv_volatile_rule_kind(v, "x", "a {{b}}", "regex");
        ck("bad regex rule fails", e.len > 0); sv_free(e);
        sv_close(v);
    }
}

int main(int argc, char **argv) {
    const char *tape = (argc > 1 && argv[1][0] != '\0')
                           ? argv[1]
                           : "tapes/single_get.md";
    sv_vcr *vcr;
    sv_str base, err;
    char *url, *body, *status, *missing;

    /* ---- a failed open reports why, and returns NULL ---- */
    /* Derived from the real tape path so this stays a genuine "not on disk"
       case wherever the binary is run from. */
    missing = malloc(strlen(tape) + 16);
    sprintf(missing, "%s.nonexistent", tape);
    vcr = sv_playback(missing, &err);
    ck("missing tape yields NULL", vcr == NULL);
    ck("missing tape reports why through the error out-param",
       err.ptr != NULL && err.len > 0 && strstr(err.ptr, "nonexistent") != NULL);
    sv_free(err);
    if (vcr != NULL) sv_close(vcr);
    free(missing);

    /* ---- open/start/close many times; closing NULL is harmless ---- */
    {
        int i, all_ok = 1;
        for (i = 0; i < 50; ++i) {
            sv_vcr *again = sv_playback(tape, NULL);
            if (again == NULL || sv_port(again) <= 0) all_ok = 0;
            sv_close(again);
            sv_close(NULL);
        }
        ck("50 open/start/close cycles", all_ok);
    }

    /* ---- playback of the canonical tape ---- */
    vcr = sv_playback(tape, &err);
    if (vcr == NULL) {
        fprintf(stderr, "FATAL: playback open failed: %s\n", err.ptr ? err.ptr : "");
        return 1;
    }
    ck("successful open leaves the error empty", err.len == 0);
    sv_free(err);

    base = sv_base_url(vcr);
    ck("base_url is an owned non-empty string", base.ptr != NULL && base.len > 0);
    ck("base_url is loopback http",
       base.ptr != NULL && strncmp(base.ptr, "http://127.0.0.1:", 17) == 0);
    ck("base_url len matches strlen", base.ptr != NULL && base.len == strlen(base.ptr));
    printf("base_url = %s\n", base.ptr ? base.ptr : "(null)");

    ck("port is bound", sv_port(vcr) > 0);
    ck("tape_length is 1", sv_tape_length(vcr) == 1);

    /* ---- header presets / notices: accepted pre-traffic, "" on success ---- */
    {
        sv_str e = sv_add_license_notice(vcr, "test notice");
        ck("add_license_notice returns empty on success", e.ptr == NULL || e.len == 0);
        sv_free(e);
        e = sv_remove_cloud_headers(vcr, "nosuchvendor");
        ck("remove_cloud_headers rejects an unknown vendor", e.ptr != NULL && e.len > 0);
        sv_free(e);
        sv_set_pretty_json(vcr, 2);
        ck("get_pretty_json reads back the indent", sv_get_pretty_json(vcr) == 2);
        sv_set_pretty_json(vcr, 0);
    }

    url = malloc(base.len + 8);
    sprintf(url, "%s/ok", base.ptr);

    body = http_get(url);
    ck("body is ok-body", body != NULL && strcmp(body, "ok-body") == 0);
    ck("last_kind is SV_OK", sv_last_kind(vcr) == SV_OK);
    ck("last_index is 0", sv_last_index(vcr) == 0);

    err = sv_last_error(vcr);
    ck("last_error is empty on a clean match",
       err.ptr == NULL || err.len == 0);
    sv_free(err);

    /* ---- cursor reset replays the same tape again ---- */
    sv_reset_cursor(vcr);
    free(body);
    body = http_get(url);
    ck("replays again after reset_cursor",
       body != NULL && strcmp(body, "ok-body") == 0);
    ck("last_kind still SV_OK after reset", sv_last_kind(vcr) == SV_OK);

    /* ---- an off-tape path is flagged, not served ---- */
    {
        char *miss = malloc(base.len + 16);
        sprintf(miss, "%s/nope", base.ptr);
        status = http_status(miss);
        ck("off-tape path is not 200",
           status != NULL && strcmp(status, "200") != 0);
        ck("off-tape path flags a non-Ok outcome", sv_last_kind(vcr) != SV_OK);
        free(status);
        free(miss);
    }

    free(url);
    free(body);
    sv_free(base);
    sv_close(vcr);


    {
        char directory[] = "/tmp/vcr-helpers-c-XXXXXX";
        char fixture[4096], command[16384], upstream[256], record_tape[4096];
        char *part;
        FILE *pipe;
        sv_vcr *rec;
        sv_str value;
        ck("create structured fixture directory", mkdtemp(directory) != NULL);
        snprintf(fixture, sizeof fixture, "%s", tape);
        part = strrchr(fixture, '/'); if (part) *part = '\0';
        part = strrchr(fixture, '/'); if (part) *part = '\0';
        part = strrchr(fixture, '/'); if (part) *part = '\0';
        strcat(fixture, "/target/test-tools/redaction_fixture");
        snprintf(command, sizeof command, "'%s' start '%s'", fixture, directory);
        pipe = popen(command, "r");
        ck("start structured upstream", pipe != NULL);
        if (!pipe) return 1;
        ck("upstream URL", fgets(upstream, sizeof upstream, pipe) != NULL);
        ck("upstream fixture started", pclose(pipe) == 0);
        upstream[strcspn(upstream, "\r\n")] = '\0';
        snprintf(record_tape, sizeof record_tape, "%s/tape.md", directory);
        rec = sv_record(record_tape, upstream, NULL);
        ck("open structured recorder", rec != NULL);
        value = sv_redact_header(rec, "Authorization"); ck("header helper", value.ptr && !value.ptr[0]); sv_free(value);
        value = sv_redact_query_param(rec, "password"); ck("query helper", value.ptr && !value.ptr[0]); sv_free(value);
        value = sv_redact_json_field(rec, "secretKey"); ck("JSON helper", value.ptr && !value.ptr[0]); sv_free(value);
        value = sv_base_url(rec);
        snprintf(command, sizeof command, "'%s' drive '%s' '%s'", fixture, directory, value.ptr);
        ck("structured upstream credentials", system(command) == 0); sv_free(value);
        ck("structured outcome", sv_last_kind(rec) == SV_OK);
        value = sv_close_and_flush(rec, NULL); ck("structured flush", value.ptr && !value.ptr[0]); sv_free(value);
        snprintf(command, sizeof command, "'%s' check '%s'", fixture, directory);
        ck("structured tape", system(command) == 0);
        { const char *files[] = {"url", "done", "capture.json", "tape.md"}; size_t i;
          for (i=0; i<4; ++i) { snprintf(command, sizeof command, "%s/%s", directory, files[i]); remove(command); }
          rmdir(directory); }
    }


    {
        char root[4096], diagnostic_tape[8192], cmd[16384];
        char *part; int i; sv_vcr *server; sv_str value;
        snprintf(root, sizeof root, "%s", tape);
        for (i=0; i<3; ++i) { part = strrchr(root, '/'); if (part) *part = '\0'; }
        snprintf(diagnostic_tape, sizeof diagnostic_tape, "%s/core_tests/diagnostics/playback.md", root);
        server = sv_playback(diagnostic_tape, NULL);
        ck("diagnostic server", server != NULL);
        sv_test_context(server, "C scenario", "scenario.test", 123);
        value = sv_base_url(server);
        snprintf(cmd, sizeof cmd, "'%s/target/test-tools/diagnostic_fixture' '%s'", root, value.ptr);
        ck("diagnostic driver", system(cmd) == 0); sv_free(value);
        value = sv_last_error_ex(server, 0);
        ck("observer diagnostic", strstr(value.ptr, "owner") != NULL && strstr(value.ptr, "scenario.test:123") != NULL); sv_free(value);
        value = sv_diagnostics_json(server, 0);
        ck("observer does not acknowledge", strstr(value.ptr, "\"retrieved\":1") == NULL); sv_free(value);
        value = sv_last_error(server); ck("consuming last error", strstr(value.ptr, "owner") != NULL); sv_free(value);
        value = sv_diagnostics_json(server, 0);
        ck("earlier event unread", strstr(value.ptr, "\"retrieved\":0") != NULL && strstr(value.ptr, "\"retrieved\":1") != NULL); sv_free(value);
        value = sv_assert_no_mismatches(server);
        ck("assertion reports all failures", strstr(value.ptr, "admin") != NULL && strstr(value.ptr, "owner") != NULL); sv_free(value);
        sv_test_context(server, "next test", "", 0);
        value = sv_assert_no_mismatches(server); ck("new test clean", value.ptr[0] == '\0'); sv_free(value);
        value = sv_diagnostics_json(server, 0); ck("new test empty", strcmp(value.ptr, "[]") == 0); sv_free(value);
        sv_close(server);
    }

    stable_order_and_range(tape);
    named_secrets(tape);
    volatile_values_tests(tape);

    if (failures == 0) {
        printf("PASS: c servirtium playback\n");
        return 0;
    }
    printf("FAILED: %d c test(s)\n", failures);
    return 1;
}
