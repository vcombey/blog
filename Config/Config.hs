module Config where

import IHP.Environment
import IHP.EnvVar
import IHP.FrameworkConfig
import qualified IHP.Log as Log
import IHP.Log.Types as LogTypes
import IHP.Prelude


config :: ConfigBuilder
config = do
    liftIO $ putStrLn "hello world"
    -- See https://ihp.digitallyinduced.com/Guide/config.html
    -- for what you can do here
    pure ()
