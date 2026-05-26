using System;

using Xunit;

namespace Servirtium.Vcr.Integration.TodoBackend;

/// <summary>
/// A <see cref="FactAttribute"/> that skips unless the named environment
/// variable is set to a non-empty value — the xunit equivalent of JUnit's
/// <c>@EnabledIfEnvironmentVariable</c>. Used to gate the record-phase test so
/// a normal <c>dotnet test</c> never tries to record (which needs the live
/// container on the fixed port).
/// </summary>
[AttributeUsage(AttributeTargets.Method)]
public sealed class EnvFactAttribute : FactAttribute
{
    public EnvFactAttribute(string variable)
    {
        string? value = Environment.GetEnvironmentVariable(variable);
        if (string.IsNullOrEmpty(value))
        {
            Skip = $"{variable} not set; skipping (record needs the live SUT + fixed port)";
        }
    }
}
