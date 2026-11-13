package dev.servirtium.vcr;

/** How placeholders and tokens are written: {{name}} (default), ${name} or [[name]]. */
public enum VolatileMarkers {
    MUSTACHE(0), DOLLAR_CURLY(1), WIKILINK(2);

    private final int code;

    VolatileMarkers(int code) {
        this.code = code;
    }

    int code() {
        return code;
    }
}
