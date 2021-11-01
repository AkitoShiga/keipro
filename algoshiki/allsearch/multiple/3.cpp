#include<bits/stdc++.h>
using namespace std;

int main() {

    int N, M, K;
    cin >> N >> M >> K;

    vector<int> A(N);
    vector<int> B(M);
    vector<int> C(M);

    for(int i=0; i<N; i++){
        cin >> A[i];
    }
    for(int i=0; i<M; i++){
        cin >> B[i];
    }
    for(int i=0; i<K; i++){
        cin >> C[i];
    }
    int count = 0;

    for(int i=0; i<N; i++){
        for(int j=0; j<M; j++) {
            for(int k=0; k<K; k++) {
                if(A[i] + B[j] == C[k])count++;
            }
        }
    }
    cout << count << endl;
    return 0;
}