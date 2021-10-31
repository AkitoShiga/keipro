#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<int> A(N);
    for (int i=0; i<N; i++) {
        cin >> A[i];
    }

    for (int j=N-1; j>-1; j--) {
        cout << A[j] << endl;
    }

    return 0;
}