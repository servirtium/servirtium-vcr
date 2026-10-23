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
/// in: an explicit <see cref="Configure"/> path, an explicit path via the
/// <c>SERVIRTIUM_VCR_LIB</c> environment variable (handy for pointing at a
/// freshly built <c>ae build --emit=lib</c> artifact during development), a
/// plain copy next to the assembly, or a NuGet
/// <c>runtimes/&lt;rid&gt;/native/</c> asset. After loading, a required-export
/// check (<see cref="ValidateAbi"/>) rejects a library too old for this
/// client's ABI with a clear engine-version message.
///
/// Registered once via a module initializer so it is active before the
/// first P/Invoke in <see cref="NativeMethods"/>.
/// </summary>
internal static class NativeLoader
{
    private const string EngineVersion = "v2.0.0-alpha.3";
    private static int _registered;
    private static volatile string? _explicitPath;

    /// <summary>Pin an explicit path (wins over env/bundled/OS discovery).</summary>
    public static void Configure(string? path)
    {
        if (!string.IsNullOrEmpty(path))
        {
            _explicitPath = path;
        }
    }

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
                ValidateAbi(handle, candidate);
                return handle;
            }
        }

        // Fall back to the OS loader (LD_LIBRARY_PATH, system paths, etc.).
        if (!NativeLibrary.TryLoad(FileName, out IntPtr os))
        {
            return IntPtr.Zero;
        }
        ValidateAbi(os, FileName);
        return os;
    }

    /// <summary>
    /// Reject a loaded library whose ABI is too old for this client: if any
    /// <c>aether_vcr_embed_*</c> export this assembly P/Invokes is missing,
    /// free the handle and throw naming the expected engine version.
    /// </summary>
    private static void ValidateAbi(IntPtr handle, string path)
    {
        foreach (MethodInfo method in typeof(NativeMethods).GetMethods(
                     BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic))
        {
            DllImportAttribute? import = method.GetCustomAttribute<DllImportAttribute>();
            string? symbol = import?.EntryPoint;
            if (string.IsNullOrEmpty(symbol) || NativeLibrary.TryGetExport(handle, symbol, out _))
            {
                continue;
            }
            NativeLibrary.Free(handle);
            throw new EntryPointNotFoundException(
                $"The native VCR library at '{path}' is incompatible with this .NET client " +
                $"(engine {EngineVersion}): required ABI symbol {symbol} is missing. Please consider " +
                $"deleting or replacing '{path}' with the engine library from {EngineVersion} " +
                "(download it from https://github.com/servirtium/servirtium-vcr/releases " +
                "and set SERVIRTIUM_VCR_LIB to its path).");
        }
    }

    private static IEnumerable<string> CandidatePaths()
    {
        if (!string.IsNullOrEmpty(_explicitPath))
        {
            yield return _explicitPath!;
        }

        string? overridePath = Environment.GetEnvironmentVariable("SERVIRTIUM_VCR_LIB");
        if (!string.IsNullOrEmpty(overridePath))
        {
            yield return overridePath!;
        }

        string baseDir = AppContext.BaseDirectory;
        yield return Path.Combine(baseDir, FileName);
        foreach (string rid in Rids)
        {
            yield return Path.Combine(baseDir, "runtimes", rid, "native", FileName);
        }
    }

    private static string FileName =>
        RuntimeInformation.IsOSPlatform(OSPlatform.Windows) ? $"{NativeMethods.Lib}.dll"
        : RuntimeInformation.IsOSPlatform(OSPlatform.OSX) ? $"lib{NativeMethods.Lib}.dylib"
        : $"lib{NativeMethods.Lib}.so";

    private static IEnumerable<string> Rids
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
            if (os == "linux" && RuntimeInformation.RuntimeIdentifier.Contains("-musl", StringComparison.Ordinal))
            {
                yield return $"linux-musl-{arch}";
            }
            yield return $"{os}-{arch}";
        }
    }
}
