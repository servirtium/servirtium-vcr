package com.paulhammant.servirtium.vcr;

/** Thrown when the VCR fails to start, or a record-mode flush detects drift. */
public final class VcrException extends RuntimeException {
    public VcrException(String message) {
        super(message);
    }
}
