#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<int> A(N);
    vector<int> B(9);

    for(int i=0; i<N; i++) {
        cin >> A[i];
    }

    for(int i=0; i<N; i++) {
        B[A[i]-1]++;
    }
    for(int i=0; i<9; i++) {
        cout << B[i] << endl;
    }
    return 0;
}


