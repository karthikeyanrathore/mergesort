#include <assert.h>
#include <string.h>

void merge(int *a , int L , int mid , int R){
  int n1 = mid - L + 1;
  int n2 = R - mid;
  int left[n1] , right[n2];

  for(int i  =0; i < n1; ++i){
    left[i] = a[i + L];
  }
  for(int i = 0; i < n2; ++i){
    right[i] = a[i + mid + 1];
  }
  int i = 0 , j = 0 , k = L;
  while(i < n1 && j < n2){
    if(left[i] <= right[j]){
      a[k++] = left[i++];
    }
    else a[k++] = right[j++];
  }
  while(i < n1){
    a[k++] = left[i++];
  }
  while(j < n2){
    a[k++] = right[j++];
  }
}
void  mergesort(int *a , int L , int R){
  if(L < R){
    int mid = (L + R) >> 1;
    mergesort(a , L , mid);
    mergesort(a , mid + 1, R);
    merge(a , L , mid , R);
  }
}
int main(){
  int a[] = {9, 1, 7, 4, 6, 2, 8, 3};
  mergesort(a , 0 , 7);

  int expected_result[] = {1, 2, 3, 4, 6, 7, 8, 9};
  assert (memcmp(a , expected_result , sizeof(a)) == 0 && "Mergesort failed");
  return 0;
}
