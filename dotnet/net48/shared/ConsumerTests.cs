using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Servirtium.Vcr.Net48Consumer
{
    [TestClass]
    public class ConsumerTests
    {
        [TestMethod]
        public void TheEngineIsInTheOutputDirectory() =>
            System.Console.WriteLine("engine: " + ConsumerChecks.EngineLocation());

        [TestMethod]
        public void TheCanonicalTapeReplays() =>
            Assert.AreEqual("ok-body", ConsumerChecks.ReplayCanonicalTape());
    }
}
