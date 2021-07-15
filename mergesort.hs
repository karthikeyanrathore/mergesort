roots :: ([Integer], Integer, Integer) -> (Integer)  
roots (a,b,c) = (0) where 
  x1 = b + c

main = do 
   let a = [5, 7, 2, 1, 4] 
   print (roots(a,0,4))
