#include<bits/stdc++.h>
using namespace std;

int main() {
    int N, value;
    cin >> N >> value;
    vector<int> A(N);
    for(int i=0; i<N; i++) {
       cin >> A[i];
    }
    int count = 0;
    for(int i=0; i<N; i++) {
       if(A[i] == value) count++;
    }
    cout << count << endl;
    return 0;
}