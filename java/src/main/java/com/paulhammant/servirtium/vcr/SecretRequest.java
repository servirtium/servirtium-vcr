package com.paulhammant.servirtium.vcr;
/** Request and field coordinates supplied to an emission-time secret callback. */
public record SecretRequest(String method, String path, String location, String format, String fieldPath, int interaction) {}
