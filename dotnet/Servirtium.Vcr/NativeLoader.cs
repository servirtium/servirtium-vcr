using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;

namespace Servirtium.Vcr;

/// <summary>
/// Locates and loads the native VCR library across the layouts it can ship
/// in: a NuGet <c>runtimes/&lt;rid&gt;/native/</c> asset, a plain copy next
/// to the test assembly, or an explicit path via the
/// <c>SERVIRTIUM_VCR_LIB</c> environment variable (handy for pointing at a
/// freshly built <c>ae build --emit=lib</c> artifact during development).
///
/// Registered once via a module initializer so it is active before the
/// first P/Invoke in <see cref="NativeMethods"/>.
/// </summary>
internal static class NativeLoader
{
    private static int _registered;

    // ModuleInitializer is exactly the right hook for a native-lib resolver:
    // it runs once, before any P/Invoke in this assembly. CA2255 warns it's
    // "intended for app code" — benign here; this is the advanced scenario it
    // calls out.
#pragma warning disable CA2255
    [ModuleInitializer]
#pragma warning restore CA2255
    internal static void Register()
    {
        if (Interlocked.Exchange(ref _registered, 1) == 1) return;
        NativeLibrary.SetDllImportResolver(typeof(NativeLoader).Assembly, Resolve);
    }

    private static IntPtr Resolve(string libraryName, Assembly assembly, DllImportSearchPath? searchPath)
    {
        if (libraryName != NativeMethods.Lib)
        {
            return IntPtr.Zero; // not ours; let the default resolver try.
        }

        foreach (string candidate in CandidatePaths())
        {
            if (!string.IsNullOrEmpty(candidate) &&
                File.Exists(candidate) &&
                NativeLibrary.TryLoad(candidate, out IntPtr handle))
            {
                return handle;
            }
        }

        // Fall back to the OS loader (LD_LIBRARY_PATH, system paths, etc.).
        return NativeLibrary.TryLoad(FileName, out IntPtr os) ? os : IntPtr.Zero;
    }

    private static IEnumerable<string> CandidatePaths()
    {
        string? overridePath = Environment.GetEnvironmentVariable("SERVIRTIUM_VCR_LIB");
        if (!string.IsNullOrEmpty(overridePath))
        {
            yield return overridePath;
        }

        string baseDir = AppContext.BaseDirectory;
        yield return Path.Combine(baseDir, FileName);
        yield return Path.Combine(baseDir, "runtimes", Rid, "native", FileName);
    }

    private static string FileName =>
        RuntimeInformation.IsOSPlatform(OSPlatform.Windows) ? $"{NativeMethods.Lib}.dll"
        : RuntimeInformation.IsOSPlatform(OSPlatform.OSX) ? $"lib{NativeMethods.Lib}.dylib"
        : $"lib{NativeMethods.Lib}.so";

    private static string Rid
    {
        get
        {
            string os =
                RuntimeInformation.IsOSPlatform(OSPlatform.Windows) ? "win"
                : RuntimeInformation.IsOSPlatform(OSPlatform.OSX) ? "osx"
                : "linux";
            string arch = RuntimeInformation.ProcessArchitecture switch
            {
                Architecture.Arm64 => "arm64",
                Architecture.X64 => "x64",
                _ => RuntimeInformation.ProcessArchitecture.ToString().ToLowerInvariant(),
            };
            return $"{os}-{arch}";
        }
    }
}
