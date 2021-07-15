#!/usr/bin/env python3

def merge(a , L , mid , R):
  n1 = mid - L + 1
  n2 = R - mid
  left = [0]*n1
  right = [0]*n2
  for i in range(0 , n1):
    left[i] = a[i + L]
  for i in range(0 , n2):
    right[i] = a[i + mid + 1]

  i =  0 
  j = 0 
  k = L
  while(i < n1 and j < n2):
    if(left[i] <= right[j]):
      a[k] = left[i]
      k += 1
      i += 1
    else:
      a[k] = right[j]
      k += 1
      j += 1

  while(i < n1):
    a[k] = left[i]
    k += 1
    i += 1

  while(j < n2):
    a[k] = right[j]
    k += 1
    j += 1


def mergesort(a , L , R):
  if(L < R):
    mid = ( L + R) >> 1;
    mergesort(a , L , mid)
    mergesort(a , mid + 1 , R);
    merge(a , L , mid , R)
     
if __name__ == "__main__":
  tc = int(input())
  while(tc):
    n =  int(input())
    a = (list(map(int,input().split())))
    mergesort(a , 0 , n - 1)
    for i in a:
      print(i  , end = " ")
    print()
    tc -= 1






