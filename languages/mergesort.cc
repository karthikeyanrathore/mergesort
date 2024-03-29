#include <bits/stdc++.h>
void merge(std :: vector<int>& a , int L , int mid , int R){
  int n1 = mid - L + 1;
  int n2 = R - mid;
  std :: vector<int> left(n1) , right(n2) , res;

  for(int i  =0; i < n1; ++i){
    left[i] = a[i + L];
  }
  for(int i = 0; i < n2; ++i){
    right[i] = a[i + mid + 1];
  }
  int i = 0 , j = 0;
  while(i < n1 && j < n2){
    if(left[i] <= right[j]){
      res.push_back(left[i++]);
    }
    else res.push_back(right[j++]);
  }
  while(i < n1){
    res.push_back(left[i++]);
  }
  while(j < n2){
    res.push_back(right[j++]);
  }
  int k = L;
  for(auto& x: res){
    a[k++] = x;
  }
}
void  mergesort(std:: vector<int>&a , int L , int R){
  if(L < R){
    int mid = (L + R) >> 1;
    mergesort(a , L , mid);
    mergesort(a , mid + 1, R);
    merge(a , L , mid , R);
  }
}
std:: vector<int> fun(std:: vector<int>& a){
  mergesort(a ,0 , a.size() - 1);
  return a;
}
int main(){
  std:: vector<int>a = {9, 1, 7, 4, 6, 2, 8, 3};
  a = fun(a);

  std:: vector<int>expected_result = {1, 2, 3, 4, 6, 7, 8, 9};
  assert (a == expected_result && "Mergesort failed");

}


