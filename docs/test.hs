double x = x + x
quadruple x = double (double x)

-- factorial x
factorial x = product [1..x]

-- average x
average ns = sum ns `div` length ns


a = b + c where
    b = 1
    c = 2


n = a `div` length xs where
  a = 10
  xs = [1 ,2, 3, 4,5]

-- add
{--
add :: (Int , Int) -> Int
add (x,y) = x + y
--}

-- zero to n
zeroto :: Int -> [Int]
zeroto n = [0..n]

{--
mult :: Int -> (Int -> (Int -> Int))
mult x y z = x*y*z
--}
{--
-- add
-- 'add 1 2
add' :: Int  ->( Int -> Int)
add' x y = x + y
--}
-- even
_even :: Integral a => a -> Bool
_even n = n `mod` 2 == 0

__even :: Int -> Bool
__even n = n `mod` 2 == 0

--split At
_splitAt :: Int -> [a] -> ([a] ,[a])
_splitAt n xs = (take n xs, drop n xs)

-- signum sign of num
_signum :: Int ->  Int
--_signum x = if x < 0 then -1 else if x == 0 then 0 else 1
_signum x | x < 0 = -1
          | x == 0 = 0
          | otherwise = 1


{--
first :: (a , b) -> a 
first (x,_) = x

first :: (Int , Int) -> Int 
first (x,_) = x

second :: (a , b) -> b
second (_,x) = x
--}

--map iterate over list map (+x)[a] a[i] += x  or below case ...  a[i] = a[i]*2 + 1
odds :: Int -> [Int]
odds n = map (\x -> x*2  + 1) [0..n-1]


halve :: [a] -> ([a] ,[a])
halve xs = (take n xs , drop n xs) where
  n = length xs `div` 2

{--
third :: [a] -> a
third xs = xs !! 2

third :: [a] -> a
third xs = head(tail(tail xs))
--}

-- patten matching
third :: [a] -> a
third (_:_:x:_) = x 

{--
safetail :: [a] -> [a]
safetail xs = if null xs then xs else tail xs

safetail :: [a] -> [a]
safetail xs | null xs = xs
            | otherwise = tail xs


--}

-- pattern match
safetail [] = []
safetail (_:xs) = xs

mult :: Int -> Int -> Int -> Int
mult x y z =  (\x y z -> x * y * z) x y z 

-- bank card number luhn algo
fun :: Int -> Int
fun x = if 2*x  > 9 then  2*x - 9 else 2*x

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = (fun a + b + fun c + d) `mod` 10 == 0





















