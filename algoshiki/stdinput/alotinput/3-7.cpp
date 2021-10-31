#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    int mini;
    int a;
    cin >> mini;
    for(int i=0; i<N-1; i++) {
       cin >> a;
       if(mini > a) mini = a;
    }
    cout << mini << endl;
    return 0;
}