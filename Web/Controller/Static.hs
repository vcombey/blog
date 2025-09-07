module Web.Controller.Static where

import BasicPrelude (print)
import IHP.Log qualified as Log
import Web.Controller.Prelude
import Web.View.Static.Welcome

instance Controller StaticController where
  action WelcomeAction = do
    Log.info ("WelcomeAction called" :: Text)
    render WelcomeView
