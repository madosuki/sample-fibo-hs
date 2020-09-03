module Lib
    ( someFunc,
      fibonacci
    ) where

-- import Data.Matrix

someFunc :: IO ()
someFunc = putStrLn "someFunc"

{-
fibonacci :: [Integer] -> Int -> Int -> [Integer]
fibonacci dataList i end =
             if i > end
                then
                  case dataList of
                    [] -> []
                    _ -> dataList
                else
                 fibonacci (dataList ++ [(dataList !! (i - 1)) + (dataList !! (i - 2))]) (i + 1) end

-}

fibonacci :: Int -> Maybe [Integer]
fibonacci n = 
  internalFibo [0, 1] 2 n
  where internalFibo = \dataList i end ->
             if i > end
                then
                  case dataList of
                    [] -> Nothing
                    _ -> Just dataList
                else
                 internalFibo (dataList ++ [(dataList !! (i - 1)) + (dataList !! (i - 2))]) (i + 1) end
