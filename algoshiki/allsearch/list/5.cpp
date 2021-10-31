#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<int> A(N);
    for(int i=0; i<N; i++) {
       cin >> A[i];
    }
    int count = 0;

    for(int i=1; i<N; i++) {
       bool q1 = i > 0 && i <= N-1;
       bool q2 = A[i] > A[i-1];
       if(q1 && q2) count++;
    }
    cout << count << endl;
    return 0;
}

