package com.paulhammant.servirtium.vcr;
import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;
import java.util.function.BiFunction;
import java.util.function.Function;
final class SecretCallbacks {
    private static String get(MemorySegment handle, int part) throws Throwable {
        return NativeMethods.takeString((MemorySegment) NativeMethods.SECRET_GET.invokeExact(handle, part));
    }
    static void stage(MemorySegment handle, BiFunction<String, SecretRequest, String> redactor, Function<String, String> resolver) {
        try (Arena arena = Arena.ofConfined()) {
            VcrBuilderBase.check((MemorySegment) NativeMethods.SECRET_BEGIN.invokeExact(handle, resolver != null ? 1 : 0), "secretBegin");
            while (true) {
                int status = (int) NativeMethods.SECRET_NEXT.invokeExact(handle);
                if (status == 0) break;
                if (status < 0) throw new VcrException("secret iteration failed");
                String replacement;
                if (resolver != null) replacement = resolver.apply(get(handle, 2));
                else {
                    var request = new SecretRequest(get(handle, 3), get(handle, 4), get(handle, 5), get(handle, 6), get(handle, 7),
                            (int) NativeMethods.SECRET_INTERACTION.invokeExact(handle));
                    replacement = redactor.apply(get(handle, 1), request);
                }
                if (replacement != null) VcrBuilderBase.check((MemorySegment) NativeMethods.SECRET_APPLY.invokeExact(handle, NativeMethods.cString(arena, replacement)), "secretApply");
            }
            VcrBuilderBase.check((MemorySegment) NativeMethods.SECRET_FINISH.invokeExact(handle), "secretFinish");
        } catch (Throwable error) {
            try { NativeMethods.SECRET_ABORT.invokeExact(handle); NativeMethods.STOP.invokeExact(handle); }
            catch (Throwable cleanup) { error.addSuppressed(cleanup); }
            throw VcrBuilderBase.rethrow("secret callback", error);
        }
    }
}
