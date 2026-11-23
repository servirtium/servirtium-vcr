using System;
namespace Servirtium.Vcr;
/// <summary>
/// What a <see cref="RecordBuilder.SecretRedactor"/> callback is told about
/// the field it is asked to name (docs/secrets.md). Metadata only, never the
/// secret value.
/// </summary>
/// <param name="Method">The recorded request's method.</param>
/// <param name="Path">The recorded request's path, query included.</param>
/// <param name="Location"><c>request.query</c>, <c>request.headers</c>, <c>request.body</c>, <c>response.headers</c> or <c>response.body</c>.</param>
/// <param name="Format"><c>query</c>, <c>header</c>, <c>form</c>, <c>json</c>, <c>xml</c>, <c>yaml</c>, <c>multipart:&lt;boundary&gt;</c> or <c>opaque</c>.</param>
/// <param name="FieldPath">The field inside the location: a header name, a JSON Pointer, an XML path (<c>/@name</c> for an attribute).</param>
/// <param name="Interaction">The interaction's zero-based number on the tape.</param>
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
        } catch { NativeMethods.SecretAbort(handle); NativeMethods.Stop(handle); throw; } // caller destroys
    }
}
