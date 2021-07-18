#include <bits/stdc++.h>
using namespace std;
int main(){
  srand(time(NULL));
  cout << 100 << "\n";
  int i = 1;
  while(i  <= 100){
    int n = rand() % 8 + 1;
    vector<int> a(n);
    for(int i = 0; i < n; ++i) a[i] = rand() % 60 + 1;

    cout << n << "\n";
    for(int i = 0; i < n; ++i) cout << a[i] << " ";
    cout << "\n";
    ++i;
  }
}



