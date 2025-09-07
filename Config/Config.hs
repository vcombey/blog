module Config where

import BasicPrelude (print)
import Data.Default (def)
import IHP.Environment
import IHP.FrameworkConfig
import IHP.Log qualified as Log
import IHP.Log.Types
import IHP.Prelude

config :: ConfigBuilder
config = do
  liftIO $ putStrLn "hello world"

  let settings =
        LoggerSettings
          { level = Log.Info,
            formatter = Log.withTimeFormatter,
            destination = Log.Stdout Log.defaultBufSize,
            timeFormat = "%Y-%m-%d %H:%M:%S"
          }
  logger <- liftIO $ Log.newLogger settings
  option logger
  pure ()