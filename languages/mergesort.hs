merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort l) (mergesort r) where
  (l, r) = splitAt (length xs `div` 2) xs

main :: IO ()
main = do
   let a = [9, 1, 7, 4, 6, 2, 8, 3] :: [Int]
   if mergesort a == [1, 2, 3, 4, 6, 7, 8, 9]
     then putStrLn "ok"
     else error "mergesort failed"
