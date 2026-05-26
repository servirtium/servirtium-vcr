{-# LANGUAGE OverloadedStrings #-}

-- | Test helpers: an HTTP GET against the VCR via @http-client@, and a tiny
-- raw-socket upstream server (fixed body, with @Content-Length@) for the
-- record→replay test — no @warp@ dependency.
module TestSupport
  ( httpGet
  , httpGetStatus
  , withUpstream
  ) where

import Control.Concurrent (forkIO)
import Control.Exception (bracket, finally, try, SomeException)
import Control.Monad (void)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as LBS
import Network.HTTP.Client
  ( defaultManagerSettings, httpLbs, newManager, parseRequest, responseBody, responseStatus )
import Network.HTTP.Types.Status (statusCode)
import Network.Socket
import Network.Socket.ByteString (recv, sendAll)

-- | GET @url@ via http-client and return the response body as a 'String'.
httpGet :: String -> IO String
httpGet url = do
  mgr <- newManager defaultManagerSettings
  req <- parseRequest url
  resp <- httpLbs req mgr
  pure (BC.unpack (LBS.toStrict (responseBody resp)))

-- | GET @url@ via http-client and return the HTTP status code (e.g. 404).
httpGetStatus :: String -> IO Int
httpGetStatus url = do
  mgr <- newManager defaultManagerSettings
  req <- parseRequest url
  resp <- httpLbs req mgr
  pure (statusCode (responseStatus resp))

-- | Run @act@ with a tiny upstream HTTP server bound on an OS-assigned port
-- of 127.0.0.1 that answers every request with @body@ (a 200 with an explicit
-- @Content-Length@ and a @text/plain@ content type). @act@ receives the base
-- URL (e.g. @http:\/\/127.0.0.1:53321@). The server is torn down afterwards.
withUpstream :: String -> (String -> IO a) -> IO a
withUpstream body act =
  bracket open close $ \sock -> do
    p <- socketPort sock
    void $ forkIO (acceptLoop sock body)
    act ("http://127.0.0.1:" ++ show p)
  where
    open = do
      addr <- resolve "127.0.0.1" 0
      sock <- socket (addrFamily addr) Stream defaultProtocol
      setSocketOption sock ReuseAddr 1
      bind sock (addrAddress addr)
      listen sock 16
      pure sock

resolve :: HostName -> PortNumber -> IO AddrInfo
resolve host p = do
  let hints = defaultHints { addrSocketType = Stream, addrFlags = [AI_NUMERICHOST, AI_NUMERICSERV] }
  addr : _ <- getAddrInfo (Just hints) (Just host) (Just (show p))
  pure addr

-- | Accept connections until the listening socket is closed (teardown), at
-- which point @accept@ throws and the loop exits quietly.
acceptLoop :: Socket -> String -> IO ()
acceptLoop sock body = loop
  where
    loop = do
      r <- try (accept sock) :: IO (Either SomeException (Socket, SockAddr))
      case r of
        Left _ -> pure ()  -- listening socket closed: stop.
        Right (conn, _) -> do
          void $ forkIO (handleConn conn body `finally` close conn)
          loop

handleConn :: Socket -> String -> IO ()
handleConn conn body = do
  -- Drain the request (we don't need to parse it for these tests).
  _ <- (try (recv conn 4096) :: IO (Either SomeException BS.ByteString))
  let payload = BC.pack body
      resp = BS.concat
        [ "HTTP/1.1 200 OK\r\n"
        , "Content-Type: text/plain\r\n"
        , "Content-Length: " <> BC.pack (show (BS.length payload)) <> "\r\n"
        , "Connection: close\r\n"
        , "\r\n"
        , payload
        ]
  void $ (try (sendAll conn resp) :: IO (Either SomeException ()))
