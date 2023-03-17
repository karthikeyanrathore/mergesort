

fn merge(_a: &mut [i32] , l: i32 , mid: i32 ,  r: i32){
  for i in 0..4{
    print!("{} " , _a[i]);
  }

}




fn mergesort(_a: &mut [i32] , l: i32 , r: i32){
  if l <  r {
   let  mid = (l + r) >> 1;
   //println!("{}" , mid);
   //mergesort(&mut _a , l , mid);
   //mergesort(&mut _a ,mid + 1 , r);
   merge(_a , l , mid , r);
   for i in 0..4{
     print!("{} " , _a[i]);
   }
  }
}

fn main() {
  let mut _a:[i32; 4] = [4 , 3 , 2 , 1];
  
  for i in 0..4{
    /*print!("{} " , _a[i]);*/
  }
  mergesort(&mut _a , 0 , 3);
  
  println!(); 
  println!("after"); 
  for i in 0..4{
    /*print!("{} " , _a[i]);*/
  }
}

