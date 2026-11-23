using System;

namespace Servirtium.Vcr.Net48Consumer
{
    public static class Program
    {
        public static int Main()
        {
            try
            {
                Console.WriteLine("engine: " + ConsumerChecks.EngineLocation());
                Console.WriteLine("replayed: " + ConsumerChecks.ReplayCanonicalTape());
                Console.WriteLine("PASS");
                return 0;
            }
            catch (Exception e)
            {
                Console.WriteLine("FAIL: " + e);
                return 1;
            }
        }
    }
}
