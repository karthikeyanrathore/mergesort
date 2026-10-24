fn merge(a: &mut [i32] , l: usize , mid: usize , r: usize){
  let left = a[l..=mid].to_vec();
  let right = a[mid + 1..=r].to_vec();
  let (mut i , mut j , mut k) = (0 , 0 , l);
  while i < left.len() && j < right.len() {
    if left[i] <= right[j] {
      a[k] = left[i];
      i += 1;
    } else {
      a[k] = right[j];
      j += 1;
    }
    k += 1;
  }
  while i < left.len() {
    a[k] = left[i];
    i += 1;
    k += 1;
  }
  while j < right.len() {
    a[k] = right[j];
    j += 1;
    k += 1;
  }
}

fn mergesort(a: &mut [i32] , l: usize , r: usize){
  if l < r {
    let mid = (l + r) >> 1;
    mergesort(a , l , mid);
    mergesort(a , mid + 1 , r);
    merge(a , l , mid , r);
  }
}

fn main() {
  let mut a = [9, 1, 7, 4, 6, 2, 8, 3];
  mergesort(&mut a , 0 , 7);
  assert_eq!(a , [1, 2, 3, 4, 6, 7, 8, 9] , "mergesort failed");
}
