module Cast0.Main where

import Effect (Effect)
import Effect.Console as Console
import Prelude

main :: Effect Unit
main = Console.log greeting

greeting :: String
greeting = "Hello, world!"
