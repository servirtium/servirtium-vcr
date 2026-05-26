package com.paulhammant.servirtium.vcr;

/**
 * Per-dispatch outcome. Values mirror the VCR_KIND_* constants in the Aether
 * VCR core. Drain after a request (via {@link VcrServer#lastKind()}) to assert
 * what the dispatcher decided.
 */
public enum Outcome {
    OK(0),
    PATH_OR_METHOD_DIFF(1),
    HEADER_MISSING(2),
    HEADER_VALUE_DIFF(3),
    HEADER_UNEXPECTED(4),
    TAPE_EXHAUSTED(5),
    BODY_DIFF(6),
    RECORD_ERROR(7);

    private final int code;

    Outcome(int code) {
        this.code = code;
    }

    public int code() {
        return code;
    }

    /** Map a native KIND int to an {@link Outcome}; unknown values map to {@link #RECORD_ERROR}. */
    public static Outcome fromCode(int code) {
        for (Outcome o : values()) {
            if (o.code == code) {
                return o;
            }
        }
        return RECORD_ERROR;
    }
}
