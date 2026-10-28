// Compiler shim so `record` / `init`-only setters (C# 9) compile under the
// legacy netstandard2.0 target (consumed by .NET Framework 4.8). Modern .NET
// provides this type in the BCL, so it is only defined for the legacy TFM to
// avoid a duplicate-definition error.
//
// This is a well-known, documented polyfill — the C# compiler looks up
// System.Runtime.CompilerServices.IsExternalInit by name to lower init setters.

#if NETSTANDARD2_0 || NETFRAMEWORK
namespace System.Runtime.CompilerServices
{
    using System.ComponentModel;

    [EditorBrowsable(EditorBrowsableState.Never)]
    internal static class IsExternalInit { }
}
#endif
