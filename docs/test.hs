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

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x*y*z


-- add
-- 'add 1 2
add' :: Int  ->( Int -> Int)
add' x y = x + y

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
_signum x = if x < 0 then -1 else if x == 0 then 0 else 1





