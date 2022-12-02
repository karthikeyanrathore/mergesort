Merge sort is a sorting algorithm that uses a divide-and-conquer approach to sorting a list of elements. It works by dividing the list of elements into smaller sublists, sorting each of those sublists, and then merging the sorted sublists back together to form a fully sorted list.

```
mergeSort :: (Ord a) => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort left) (mergeSort right)
  where
    (left, right) = splitAt (length xs `div` 2) xs

merge :: (Ord a) => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
  | x <= y = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys
```
The mergeSort function takes a list of elements as an argument and returns a sorted list of those elements. It does this by first checking if the list is empty or has only one element, in which case it just returns the original list.

If the list has more than one element, the function calls itself recursively on the left and right halves of the list, obtained by using the splitAt function. It then uses the merge function to merge the two sorted sublists back together, resulting in a fully sorted list.

The merge function takes two sorted lists as arguments and returns a single sorted list by comparing the elements at the head of each list and adding the smaller of the two to the result list. It continues this process until one of the lists is empty, at which point it just adds the remaining elements of the other list to the result.

Overall, merge sort is a very efficient and effective way to sort a large list of elements in Haskell. It has a time complexity of O(n * log(n)), making it much faster than other sorting algorithms for large lists.
