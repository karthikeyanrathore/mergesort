func merge(_ array: inout [Int], _ low: Int, _ mid: Int, _ high: Int){
  let left = Array(array[low...mid])
  let right = Array(array[(mid + 1)...high])
  var i = 0
  var j = 0
  var k = low
  while (i < left.count && j < right.count){
    if( left[i] <= right[j]){
      array[k] = left[i]
      i += 1
    }
    else{
      array[k] = right[j]
      j += 1
    }
    k += 1
  }
  while(i < left.count){
    array[k] = left[i]
    i += 1
    k += 1
  }
  while(j < right.count){
    array[k] = right[j]
    j += 1
    k += 1
  }
}


func mergesort(_ array: inout [Int], _ low: Int, _ high: Int){
  if (low < high){
    let mid = (low + high) >> 1
    mergesort(&array, low, mid)
    mergesort(&array, mid + 1, high)
    merge(&array, low, mid, high)
  }
}

var a = [9, 1, 7, 4, 6, 2, 8, 3]
mergesort(&a, 0, a.count - 1)
precondition(a == [1, 2, 3, 4, 6, 7, 8, 9], "mergesort failed")
