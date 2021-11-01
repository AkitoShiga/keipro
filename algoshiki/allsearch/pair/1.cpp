#include <bits/stdc++.h>
using namespace std;

int main() {
    int N, K;
    cin >> N >> K;
    vector<int> A(N);
    for(int i=0; i<N; i++){
        cin >> A[i];
    }
    int count = 0;
    for(int i=0; i<N; i++){
        for(int j=i+1; j<N; j++){
            if(A[i]+A[j]<=K)count++;
        }
    }
    cout << count << endl;
}