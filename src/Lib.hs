module Lib
    ( 
      fibonacci
    ) where


fibonacci :: Int -> [Integer]
fibonacci n | n == 0 = [0]
  | n == 1 = [0, 1]
  | otherwise = 
    internalFibo [0, 1] 2 n
    where internalFibo = \dataList i end ->
             if i > end
                then
                  case dataList of
                    [] -> []
                    _ -> dataList
                else
                 internalFibo (dataList ++ [(dataList !! (i - 1)) + (dataList !! (i - 2))]) (i + 1) end
