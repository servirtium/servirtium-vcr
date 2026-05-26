package com.paulhammant.servirtium.vcr;

/**
 * Field selector for redactions / unredactions / header removals.
 * Values mirror the FIELD_* constants in {@code std/http/server/vcr/module.ae}.
 */
public enum Field {
    PATH(1),
    RESPONSE_BODY(2),
    REQUEST_HEADERS(3),
    REQUEST_BODY(4),
    RESPONSE_HEADERS(5);

    private final int code;

    Field(int code) {
        this.code = code;
    }

    /** The numeric FIELD_* value the native ABI expects. */
    public int code() {
        return code;
    }
}
