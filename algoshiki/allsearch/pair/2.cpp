#include <bits/stdc++.h>
using namespace std;

int main() {
    int N, K;
    cin >> N >> K;
    vector<int> A(K-N+1);
    for(int i=N; i<=K; i++){
        A[i-N] = i;
    }
    int count = 0;
    for(int i=0; i<A.size(); i++){
        for(int j=i+1; j<A.size(); j++){
            if(A[i]%10 == A[j]%10)count++;
        }
    }
    cout << count << endl;
}