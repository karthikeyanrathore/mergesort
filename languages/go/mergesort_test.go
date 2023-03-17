package main
import (
  "testing"
  "github.com/stretchr/testify/assert"
)

func TestMergeSort(t *testing.T) {
  a := []int{9, 1, 7, 4, 6, 2, 8, 3}
  expected_result := []int{1, 2, 3, 4, 6, 7, 8, 9}

  mergesort(a, 0 , 7);
  assert.Equal(t, a, expected_result)
}


func mergesort(a []int, l int , h int){
  if l <  h {
    mid := (l + h) >> 1
    mergesort(a, l , mid);
    mergesort(a, mid + 1 , h);
    merge(a, l , mid ,h);
  }
}

func merge(a []int, l int ,mid int , h int){
  n1 := mid - l + 1
  n2 := h - mid;
  left := make([]int, n1)
  right := make([]int, n2)
  for i:=0; i < n1; i++ {
    left[i] = a[i + l]
  }
  for i:=0; i < n2; i++ {
    right[i] = a[i + mid + 1]
  }
  /*
  for i:=0; i < n1; i++ {
    fmt.Print(left[i])
  }
  for i:=0; i < n2; i++ {
    fmt.Print(right[i])
  }*/
  i := 0
  j := 0
  k := l
  for i < n1 && j < n2 {
    if left[i] <= right[j] {
      a[k] = left[i]
      i += 1
      k += 1
    }else{
      a[k] = right[j]
      j += 1
      k += 1
    }
  }
  for i < n1 {
    a[k] =left[i]
    i += 1
    k += 1
  }
  for j < n2 {
    a[k] = right[j]
    j += 1
    k += 1
  }

}

