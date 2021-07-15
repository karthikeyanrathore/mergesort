#include <iostream>

void merge(int *a , int L , int mid , int R){
  int n1 = mid - L + 1;
  int n2 = R - mid;
  int *left(n1) , *right(n2) , *res;

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
void  mergesort(vector<int>&a , int L , int R){
  if(L < R){
    int mid = (L + R) >> 1;
    mergesort(a , L , mid);
    mergesort(a , mid + 1, R);
    merge(a , L , mid , R);
  }
}
vector<int> fun(vector<int>& a){
  mergesort(a ,0 , a.size() - 1);
  return a;
}
int main(){
  int n; scanf("%d",&n);
  int a[n];
  for(int i = 0; i < n; ++i) scanf("%d" , &a[i]);
  fun(a , 0 , n - 1);
}
