package com.paulhammant.servirtium.vcr;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpServer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * A throwaway HTTP upstream for record-mode tests. Returns a configurable body
 * (with Content-Length, so no chunking) plus any extra response headers, and
 * captures the last request it saw so tests can assert what the VCR forwarded.
 */
final class FakeUpstream implements AutoCloseable {

    private final HttpServer server;
    private final String baseUrl;

    volatile String responseBody = "upstream-body";
    volatile String responseContentType = "text/plain";
    final Map<String, String> extraResponseHeaders = new LinkedHashMap<>();

    volatile String lastMethod;
    volatile String lastBody;

    FakeUpstream() {
        try {
            server = HttpServer.create(new InetSocketAddress("127.0.0.1", 0), 0);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        baseUrl = "http://127.0.0.1:" + server.getAddress().getPort();
        server.createContext("/", this::handle);
        server.start();
    }

    String baseUrl() {
        return baseUrl;
    }

    private void handle(HttpExchange ex) throws IOException {
        try (ex) {
            lastMethod = ex.getRequestMethod();
            try (InputStream in = ex.getRequestBody()) {
                lastBody = new String(in.readAllBytes(), StandardCharsets.UTF_8);
            }

            byte[] payload = responseBody.getBytes(StandardCharsets.UTF_8);
            ex.getResponseHeaders().set("Content-Type", responseContentType);
            extraResponseHeaders.forEach((k, v) -> ex.getResponseHeaders().set(k, v));
            // Explicit length => Content-Length, no chunking.
            ex.sendResponseHeaders(200, payload.length);
            try (OutputStream os = ex.getResponseBody()) {
                os.write(payload);
            }
        }
    }

    @Override
    public void close() {
        server.stop(0);
    }
}
