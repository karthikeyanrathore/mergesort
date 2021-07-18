package main
import "fmt"

var a[20000] int

func main(){
  //fmt.Println("hy");
  var  tc int
  fmt.Scanln(&tc)
  i := 0
  for i < tc {
    var n int
    fmt.Scan(&n)
    for i := 0; i < n; i++ {
      fmt.Scan(&a[i])
    }
    mergesort(0 , n - 1);
    for i := 0; i < n; i++{
      fmt.Printf("%d ",a[i])
    }
    fmt.Printf("\n")
    i += 1
  }
}

func mergesort(l int , h int){
  if l <  h {
    mid := (l + h) >> 1
    mergesort(l , mid);
    mergesort( mid + 1 , h);
    merge(l , mid ,h);
  }
}

func merge(l int ,mid int , h int){
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

