module Config where

import IHP.FrameworkConfig
import IHP.Prelude


config :: ConfigBuilder
config = do
    liftIO $ putStrLn "hello world"
    -- See https://ihp.digitallyinduced.com/Guide/config.html
    -- for what you can do here
    pure ()
