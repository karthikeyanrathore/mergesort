#include <bits/stdc++.h>
std ::vector<int> brute(std :: vector<int>& a){
  std :: sort(a.begin() , a.end());
  return a;
}
int main(){
  int tc; scanf("%d"  , &tc);
  while(tc --){
    int n;scanf("%d",&n);
    std:: vector<int>a(n);
    for(int i = 0; i < n; ++i) scanf("%d" ,&a[i]);
    a = brute(a);
    for(int i = 0; i < n; ++i) printf("%d " ,a[i]);
    printf("\n");
  }
}


