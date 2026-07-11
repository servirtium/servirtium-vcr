-- | Third-party consumer example for the Haskell binding.
--
-- A standalone cabal executable that depends on the servirtium-haskell package
-- and replays the canonical tape. The engine .so is linked from the package's
-- bundled native/ dir (via extra-lib-dirs + an rpath in cabal.project.local) —
-- no SERVIRTIUM_VCR_LIB. HTTP is done by shelling out to curl (System.Process),
-- so the consumer needs only GHC boot libraries (base, process) — no Hackage.
module Main (main) where

import Control.Monad (unless)
import Servirtium.Vcr (Outcome (Ok), baseUrl, lastKind, playbackOptions, withPlayback)
import System.Exit (exitFailure)
import System.IO (hPutStrLn, stderr)
import System.Process (readProcess)

failWith :: String -> IO a
failWith msg = hPutStrLn stderr ("FAIL: " ++ msg) >> exitFailure

main :: IO ()
main = withPlayback (playbackOptions "single_get.md") $ \vcr -> do
  url <- baseUrl vcr
  body <- readProcess "curl" ["-s", url ++ "/ok"] ""
  unless (body == "ok-body") $ failWith ("expected body 'ok-body', got " ++ show body)
  k <- lastKind vcr
  unless (k == Ok) $ failWith ("expected Ok, got " ++ show k)
  putStrLn "PASS[discovery]: consumer replayed the canonical tape from the servirtium-haskell package"
