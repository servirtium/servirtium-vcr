package dev.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;
import java.util.ArrayList;
import java.util.List;

/**
 * Shared bind options and per-handle config handling for both builders.
 *
 * @param <S> the concrete builder type, for fluent self-returns.
 */
public abstract class VcrBuilderBase<S extends VcrBuilderBase<S>> {

    record HeaderRemoval(Field field, String name) {
    }

    private record StaticMount(String mount, String dir) {
    }

    final String tapePath;
    String host = "127.0.0.1";
    int port;            // 0 => OS-assigned (dynamic)
    String label = "";
    String nativeLib;

    private final List<HeaderRemoval> headerRemovals = new ArrayList<>();
    private final List<StaticMount> staticContent = new ArrayList<>();
    private final List<String> untaped = new ArrayList<>();
    /** A volatile-value step; {@code op} is "rule", "bind" or "profile". */
    private record VolatileConfig(String op, String a, String b, String c) {
    }
    private final List<VolatileConfig> volatileConfigs = new ArrayList<>();
    private VolatileMarkers volatileMarkers = VolatileMarkers.MUSTACHE;
    private boolean ignoreVolatileHeaders;
    private boolean removeTransportHeaders;
    private boolean redactCredentials;
    private final List<String> cloudVendors = new ArrayList<>();
    private final List<String> credentialHeaders = new ArrayList<>();
    private String tlsCert;
    private String tlsKey;
    private String tlsCertPem;
    private String tlsKeyPem;

    VcrBuilderBase(String tapePath) {
        this.tapePath = tapePath;
    }

    abstract S self();

    /**
     * Marker style for placeholders and tokens (default {@link VolatileMarkers#MUSTACHE}).
     * Applied before any rule.
     */
    public S volatileMarkers(VolatileMarkers style) {
        this.volatileMarkers = style;
        return self();
    }

    /**
     * A volatile-value rule: a template with {@code {{name}}} placeholders (see
     * docs/volatile-values.md). {@code scope} is e.g. "request body". Not named
     * {@code volatile}: that is a Java keyword. A bad rule fails {@code start()}.
     */
    public S volatileRule(String scope, String pattern) {
        return volatileRule(scope, pattern, "template");
    }

    /** As {@link #volatileRule(String, String)}, with kind "template" or "regex". */
    public S volatileRule(String scope, String pattern, String kind) {
        volatileConfigs.add(new VolatileConfig("rule", scope, kind, pattern));
        return self();
    }

    /** Bind a real value to a token ({@code name-N}) or to every unbound token of {@code name}. */
    public S bind(String nameOrToken, String value) {
        volatileConfigs.add(new VolatileConfig("bind", nameOrToken, value, null));
        return self();
    }

    /** Load a volatile-values profile file (its rules merge with the others). */
    public S volatileProfile(String path) {
        volatileConfigs.add(new VolatileConfig("profile", path, null, null));
        return self();
    }

    /**
     * Pin an explicit path to libservirtium_vcr library for this run — the
     * first-class way to say <em>where the {@code .so} is</em> at launch,
     * instead of relying on discovery. Wins over the bundled jar-resource
     * default and the {@code SERVIRTIUM_VCR_LIB} env override. Set before
     * {@code start()}.
     */
    public S nativeLib(String path) {
        this.nativeLib = path;
        return self();
    }

    /** Bind host. Defaults to 127.0.0.1. */
    public S host(String host) {
        this.host = host;
        return self();
    }

    /** Bind port. 0 (the default) asks the OS for a free port. */
    public S port(int port) {
        this.port = port;
        return self();
    }

    /** Human-facing label for logs/diagnostics (not a state key). */
    public S label(String label) {
        this.label = label;
        return self();
    }

    /** Remove a header by name from the given block (case-insensitive). */
    public S removeHeader(Field field, String name) {
        headerRemovals.add(new HeaderRemoval(field, name));
        return self();
    }

    /**
     * Drop the per-request <em>volatile</em> headers clients inject on every
     * call — distributed-tracing and correlation ids that change run to run
     * ({@code traceparent}, {@code tracestate}, {@code Request-Id},
     * {@code X-Request-Id}, {@code X-Correlation-Id}, {@code baggage}) — from
     * both the recorded expectation and the live request before matching, so
     * strict matching doesn't fail on a confusing first run. Honored in
     * playback and record.
     */
    public S ignoreVolatileHeaders() {
        return ignoreVolatileHeaders(true);
    }

    public S ignoreVolatileHeaders(boolean on) {
        this.ignoreVolatileHeaders = on;
        return self();
    }

    /**
     * Drop the transport headers: {@code Host}, {@code Connection},
     * {@code Content-Length}, the other hop-by-hop headers and the request's
     * {@code Accept-Encoding} (Servirtium 1's behaviour), from both the
     * recorded tape and the live request. Opt-in; listed in the recording-rules
     * footer under the preset's name.
     */
    public S removeTransportHeaders() {
        this.removeTransportHeaders = true;
        return self();
    }

    /**
     * Drop a cloud vendor's CDN / load-balancer tracing and cache-status
     * headers. {@code vendor} is one of {@code "aws"}, {@code "azure"},
     * {@code "cloudflare"}, {@code "fastly"}, {@code "gcp"}; an unknown name
     * fails at {@code start()}. May be called once per vendor.
     */
    public S removeCloudHeaders(String vendor) {
        cloudVendors.add(vendor);
        return self();
    }

    /**
     * Redact credentials: {@code Authorization} / {@code Proxy-Authorization}
     * keep their scheme ({@code Bearer AUTHORIZATION_1}), each cookie value in
     * {@code Cookie} / {@code Set-Cookie} becomes {@code COOKIE_N},
     * {@code X-Api-Key} and {@code X-Auth-Token} become tokens. Playback
     * matches these headers on presence, not value, so register this on the
     * playback builder too.
     */
    public S redactCredentials() {
        this.redactCredentials = true;
        return self();
    }

    /**
     * Redact one more credential header the same way as
     * {@link #redactCredentials()}: its whole value becomes a token named
     * after the header ({@code X-Vault-Token: X_VAULT_TOKEN_1}).
     */
    public S redactCredentialHeader(String name) {
        credentialHeaders.add(name);
        return self();
    }

    /**
     * Serve a path prefix from an on-disk directory instead of the tape
     * (Servirtium step 11).
     *
     * <p>Works in both playback and record mode (recording a browser suite is
     * cleaner served same-origin from the VCR — no CORS preflights).
     */
    public S staticContent(String mountPath, String fsDir) {
        staticContent.add(new StaticMount(mountPath, fsDir));
        return self();
    }

    /**
     * Mark an incidental request path (e.g. {@code /favicon.ico}) so the VCR
     * answers 404 without consuming the tape cursor (playback) and never
     * forwards/records it (record).
     */
    public S untaped(String path) {
        untaped.add(path);
        return self();
    }

    /** Serve over HTTPS using this PEM certificate and key (PEM cert + key: ECDSA P-256/P-384/P-521, Ed25519, or RSA 2048-16384). Playback and record. */
    public S tls(String certPath, String keyPath) {
        this.tlsCert = certPath;
        this.tlsKey = keyPath;
        return self();
    }

    /** Like {@link #tls}, but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk. */
    public S tlsFromPem(String certPem, String keyPem) {
        this.tlsCertPem = certPem;
        this.tlsKeyPem = keyPem;
        return self();
    }

    /**
     * Apply this builder's accumulated config to the opened handle, before
     * serving starts. Subclasses extend this.
     */
    void applyConfig(Arena arena, MemorySegment handle) {
        try {
            if (volatileMarkers != VolatileMarkers.MUSTACHE) { // the core's default; leave it unset
                check((MemorySegment) NativeMethods.SET_VOLATILE_MARKERS.invokeExact(handle, volatileMarkers.code()), "volatileMarkers");
            }
            for (VolatileConfig v : volatileConfigs) {
                MemorySegment r;
                switch (v.op()) {
                    case "rule" -> r = (MemorySegment) NativeMethods.VOLATILE_RULE.invokeExact(handle,
                            NativeMethods.cString(arena, v.a()), NativeMethods.cString(arena, v.b()), NativeMethods.cString(arena, v.c()));
                    case "bind" -> r = (MemorySegment) NativeMethods.VOLATILE_BIND.invokeExact(handle,
                            NativeMethods.cString(arena, v.a()), NativeMethods.cString(arena, v.b()));
                    default -> r = (MemorySegment) NativeMethods.VOLATILE_PROFILE.invokeExact(handle,
                            NativeMethods.cString(arena, v.a()));
                }
                check(r, "volatile " + v.op());
            }
        } catch (Throwable t) {
            throw rethrow("volatile", t);
        }
        for (HeaderRemoval h : headerRemovals) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.REMOVE_HEADER.invokeExact(
                        handle, h.field().code(), NativeMethods.cString(arena, h.name()));
                check(r, "removeHeader");
            } catch (Throwable t) {
                throw rethrow("removeHeader", t);
            }
        }
        for (StaticMount s : staticContent) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.STATIC_CONTENT.invokeExact(
                        handle,
                        NativeMethods.cString(arena, s.mount()),
                        NativeMethods.cString(arena, s.dir()));
                check(r, "staticContent");
            } catch (Throwable t) {
                throw rethrow("staticContent", t);
            }
        }
        if (tlsCert != null) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.SET_TLS.invokeExact(
                        handle, NativeMethods.cString(arena, tlsCert), NativeMethods.cString(arena, tlsKey));
                check(r, "tls");
            } catch (Throwable t) {
                throw rethrow("tls", t);
            }
        }
        if (tlsCertPem != null) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.SET_TLS_PEM.invokeExact(
                        handle, NativeMethods.cString(arena, tlsCertPem), NativeMethods.cString(arena, tlsKeyPem));
                check(r, "tlsFromPem");
            } catch (Throwable t) {
                throw rethrow("tlsFromPem", t);
            }
        }
        for (String p : untaped) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.UNTAPED.invokeExact(
                        handle, NativeMethods.cString(arena, p));
                check(r, "untaped");
            } catch (Throwable t) {
                throw rethrow("untaped", t);
            }
        }
        if (ignoreVolatileHeaders) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.IGNORE_VOLATILE_HEADERS.invokeExact(handle);
                check(r, "ignoreVolatileHeaders");
            } catch (Throwable t) {
                throw rethrow("ignoreVolatileHeaders", t);
            }
        }
        if (removeTransportHeaders) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.REMOVE_TRANSPORT_HEADERS.invokeExact(handle);
                check(r, "removeTransportHeaders");
            } catch (Throwable t) {
                throw rethrow("removeTransportHeaders", t);
            }
        }
        for (String vendor : cloudVendors) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.REMOVE_CLOUD_HEADERS.invokeExact(
                        handle, NativeMethods.cString(arena, vendor));
                check(r, "removeCloudHeaders");
            } catch (Throwable t) {
                throw rethrow("removeCloudHeaders", t);
            }
        }
        if (redactCredentials) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.REDACT_CREDENTIALS.invokeExact(handle);
                check(r, "redactCredentials");
            } catch (Throwable t) {
                throw rethrow("redactCredentials", t);
            }
        }
        for (String name : credentialHeaders) {
            try {
                MemorySegment r = (MemorySegment) NativeMethods.REDACT_CREDENTIAL_HEADER.invokeExact(
                        handle, NativeMethods.cString(arena, name));
                check(r, "redactCredentialHeader");
            } catch (Throwable t) {
                throw rethrow("redactCredentialHeader", t);
            }
        }
    }

    /** Throw if a mutation call returned a non-empty error string ("" = success). */
    static void check(MemorySegment resultPtr, String op) {
        String err = NativeMethods.takeString(resultPtr);
        if (err != null && !err.isEmpty()) {
            throw new VcrException("vcr " + op + " failed: " + err);
        }
    }

    static VcrException rethrow(String op, Throwable t) {
        if (t instanceof VcrException ve) {
            return ve;
        }
        return new VcrException("vcr " + op + " failed: " + t.getMessage());
    }

    /** The open's failure reason ("" if the open succeeded). */
    static String openError(MemorySegment handle) {
        try {
            String err = NativeMethods.takeString((MemorySegment) NativeMethods.OPEN_ERROR.invokeExact(handle));
            return err == null ? "" : err;
        } catch (Throwable t) {
            return "(could not read open_error: " + t.getMessage() + ")";
        }
    }

    static void destroy(MemorySegment handle) {
        try {
            NativeMethods.DESTROY.invokeExact(handle);
        } catch (Throwable t) {
            throw new VcrException("vcr destroy failed: " + t.getMessage());
        }
    }

    static String drainStartError(MemorySegment handle) {
        try {
            MemorySegment p = (MemorySegment) NativeMethods.LAST_ERROR.invokeExact(handle);
            String err = NativeMethods.takeString(p);
            return (err == null || err.isEmpty())
                    ? "(no detail; check tape path and port availability)"
                    : err;
        } catch (Throwable t) {
            return "(could not read last_error: " + t.getMessage() + ")";
        }
    }
}
