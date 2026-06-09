package com.paulhammant.servirtium.vcr;

/**
 * Field selector for redactions / unredactions / header removals.
 * Values mirror the FIELD_* constants in the in-repo {@code core/vcr.ae} engine.
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
