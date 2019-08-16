#!/bin/runhaskell

import Control.Exception
import Control.Monad
import GHC.IO.Exception
import System.IO
import System.IO.Error hiding (catch)
import Data.List
import Data.Maybe


main = do 
  ls <- try $ do term <- hIsTerminalDevice stdin
                 if not term
                   then liftM lines $ hGetContents stdin
                   else do
                   throwIO (IOError (Just stdin) NoSuchThing "" "Error: No pipe from stdin\n" Nothing Nothing)
                   return []
                   
  case ls of
    Left (IOError (Just stdin) _ _ m _ _) -> do
      hPutStr stderr m

    Left ex -> do
      let err = show (ex :: IOException)
      hPutStr stderr ("Error:\n    " ++ (show ex) ++ "\n")
      throwIO ex

    Right content -> mapM_ putStrLn $ map unwords $ transpose $ map words content

