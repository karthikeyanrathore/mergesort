#!/usr/bin/awk -f

# sort the numbers on each input line with mergesort

function merge(a, L, mid, R,    left, right, n1, n2, i, j, k) {
  n1 = mid - L + 1
  n2 = R - mid
  for (i = 0; i < n1; ++i) left[i] = a[i + L]
  for (i = 0; i < n2; ++i) right[i] = a[i + mid + 1]
  i = 0; j = 0; k = L
  while (i < n1 && j < n2) {
    if (left[i] <= right[j]) a[k++] = left[i++]
    else a[k++] = right[j++]
  }
  while (i < n1) a[k++] = left[i++]
  while (j < n2) a[k++] = right[j++]
}

function mergesort(a, L, R,    mid) {
  if (L < R) {
    mid = int((L + R) / 2)
    mergesort(a, L, mid)
    mergesort(a, mid + 1, R)
    merge(a, L, mid, R)
  }
}

{
  split("", a)
  for (i = 1; i <= NF; ++i) a[i] = $i + 0
  mergesort(a, 1, NF)
  out = a[1]
  for (i = 2; i <= NF; ++i) out = out " " a[i]
  print out
}
