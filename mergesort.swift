func merge(left: [Int],right: [Int],  _ low: Int, _ mid: Int,_  high: Int) -> [Int]{
  for i in 0...(n1 - 1){
    left.append(array[i + low])
  }
  for i in 0...(n2 - 1){
    right.append(array[i + mid + 1])
  }
  var i = 0
  var j = 0
  var res = [Int]()
  while (i < n1 && j < n2){
    if( left[i] <= right[j]){
      res.append(left[i])
      i += 1
    }
    else{
      res.append(right[j])
      j += 1
    }
  }
  while(i < n1){
    res.append(left[i])
    i += 1
  }
  while(j < n2){
    res.append(right[j])
    j += 1
  }
  var k = low
  for el in res{
    array[k] = el
    k += 1
  }
}


func mergesort(array: [Int], _ low: Int, _ high: Int) -> [Int]{
  if(array.count == 1){
    return array
  }
  if(array.count == 2){
    return merge([a[0]], [a[1]])
  }
  if (low < high){
    var mid = (low + high) >> 1;
    let a1 =mergesort(array, low, mid)
    let a2 = mergesort(array,mid + 1,high)
    return merge(array, low, mid,  high)
  }
}

var a = [8, 9, 1, 0];
print(mergesort(a , 0, 3))
