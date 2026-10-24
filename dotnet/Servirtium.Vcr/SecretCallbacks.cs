using System;
namespace Servirtium.Vcr;
public sealed record SecretRequest(string Method, string Path, string Location, string Format, string FieldPath, int Interaction);
internal static class SecretCallbacks {
    private static void Check(IntPtr result) { var error = NativeMethods.TakeString(result); if (!string.IsNullOrEmpty(error)) throw new VcrException(error); }
    internal static void Stage(IntPtr handle, Func<string, SecretRequest, string?>? redactor, Func<string, string?>? resolver) {
        try {
            Check(NativeMethods.SecretBegin(handle, resolver != null ? 1 : 0));
            while (true) {
                int status = NativeMethods.SecretNext(handle); if (status == 0) break;
                if (status < 0) throw new VcrException("secret iteration failed");
                string Get(int part) => NativeMethods.TakeString(NativeMethods.SecretGet(handle, part));
                string? replacement = resolver != null ? resolver(Get(2)) : redactor!(Get(1),
                    new SecretRequest(Get(3), Get(4), Get(5), Get(6), Get(7), NativeMethods.SecretInteraction(handle)));
                if (replacement != null) Check(NativeMethods.SecretApply(handle, replacement));
            }
            Check(NativeMethods.SecretFinish(handle));
        } catch { NativeMethods.SecretAbort(handle); NativeMethods.Stop(handle); throw; }
    }
}
