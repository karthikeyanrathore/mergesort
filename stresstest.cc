#include <bits/stdc++.h>
using namespace std;
int main(){
  srand(time(NULL));
  cout << 30 << "\n";
  int i = 1;
  while(i <= 30){
    int n = rand() % 20 + 1;
    vector<int> a(n);
    cout << n << "\n";
    for(int i = 0; i < n; ++i) a[i] = rand() % 60 + 1;
    for(int i = 0; i < n; ++i) cout << a[i] << " ";
    cout << "\n";
    ++i;
  }
}



