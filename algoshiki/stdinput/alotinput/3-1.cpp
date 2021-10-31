#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<int> A(N);

    for(int i=0; i<N; i++) {
        cin >> A[i];
    }

    int ans = 0;
    for(int item: A) {
        ans += item;
    }
    cout << ans << endl;

    return 0;
}