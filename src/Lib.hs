module Lib
    ( 
      fibonacci
    ) where


fibonacci :: Int -> Maybe [Integer]
fibonacci n | n == 0 = Just [0]
  | n == 1 = Just [0, 1]
  | n < 0 = Nothing
  | otherwise = 
    internalFibo [0, 1] 2 n
    where internalFibo = \dataList i end ->
             if i > end
                then
                  case dataList of
                    [] -> Nothing
                    _ -> Just dataList
                else
                 internalFibo (dataList ++ [(dataList !! (i - 1)) + (dataList !! (i - 2))]) (i + 1) end
