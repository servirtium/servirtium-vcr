/*
 * echo_upstream.c — a minimal HTTP/1.1 upstream that echoes the request
 * body back as the response body, for the VCR large-request-body
 * streaming test (aether #626).
 *
 * Since aether 0.269.0 the std.http SERVER no longer buffers a request
 * body whole when Content-Length > 16 KiB — it hands the handler a
 * streaming request, and http_request_body(req) returns "". The VCR
 * engine read bodies only via that buffered accessor, so a >16 KiB
 * POST recorded/forwarded an EMPTY body. This upstream lets the record
 * probe prove the engine now drains the whole streamed body: it reads
 * the full Content-Length off the socket and writes it straight back,
 * so a short echo means the engine forwarded a truncated body.
 *
 * Binds 127.0.0.1:0, prints the OS-assigned port (one line) to stdout,
 * then loops: accept, read headers + exactly Content-Length body bytes,
 * reply 200 with that body, close. Runs until killed by the harness.
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <arpa/inet.h>
#include <sys/socket.h>

static long parse_content_length(const char* headers) {
    /* Case-insensitive search for "content-length:". */
    const char* p = headers;
    while (*p) {
        if (strncasecmp(p, "content-length:", 15) == 0) {
            return strtol(p + 15, NULL, 10);
        }
        const char* nl = strchr(p, '\n');
        if (!nl) break;
        p = nl + 1;
    }
    return 0;
}

int main(void) {
    signal(SIGPIPE, SIG_IGN);

    int ls = socket(AF_INET, SOCK_STREAM, 0);
    if (ls < 0) { perror("socket"); return 1; }
    int one = 1;
    setsockopt(ls, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one));

    struct sockaddr_in a;
    memset(&a, 0, sizeof(a));
    a.sin_family = AF_INET;
    a.sin_port = htons(0);                 /* OS-assigned */
    inet_pton(AF_INET, "127.0.0.1", &a.sin_addr);
    if (bind(ls, (struct sockaddr*)&a, sizeof(a)) != 0) { perror("bind"); return 1; }
    if (listen(ls, 16) != 0) { perror("listen"); return 1; }

    struct sockaddr_in bound;
    socklen_t bl = sizeof(bound);
    if (getsockname(ls, (struct sockaddr*)&bound, &bl) != 0) { perror("getsockname"); return 1; }
    printf("%d\n", ntohs(bound.sin_port));
    fflush(stdout);

    for (;;) {
        int cs = accept(ls, NULL, NULL);
        if (cs < 0) continue;

        /* Read until we have the full header block (\r\n\r\n). */
        size_t cap = 1 << 20;          /* 1 MiB is plenty for this test */
        char* buf = (char*)malloc(cap);
        if (!buf) { close(cs); continue; }
        size_t have = 0;
        long header_end = -1;
        while (have < cap - 1) {
            ssize_t n = read(cs, buf + have, cap - 1 - have);
            if (n <= 0) break;
            have += (size_t)n;
            buf[have] = '\0';
            char* term = strstr(buf, "\r\n\r\n");
            if (term) { header_end = (long)(term - buf) + 4; break; }
        }
        if (header_end < 0) { free(buf); close(cs); continue; }

        long clen = parse_content_length(buf);
        long body_have = (long)have - header_end;
        /* Pull the remaining body bytes off the socket. */
        while (body_have < clen && have < cap - 1) {
            ssize_t n = read(cs, buf + have, cap - 1 - have);
            if (n <= 0) break;
            have += (size_t)n;
            body_have = (long)have - header_end;
        }

        const char* body = buf + header_end;
        long body_len = body_have < clen ? body_have : clen;

        char head[256];
        int hn = snprintf(head, sizeof(head),
            "HTTP/1.1 200 OK\r\n"
            "Content-Type: text/plain\r\n"
            "Content-Length: %ld\r\n"
            "\r\n", body_len);

        /* Write header then body. */
        ssize_t w;
        long off = 0;
        while (off < hn) { w = write(cs, head + off, hn - off); if (w <= 0) break; off += w; }
        off = 0;
        while (off < body_len) { w = write(cs, body + off, body_len - off); if (w <= 0) break; off += w; }

        free(buf);
        close(cs);
    }
    return 0;
}
