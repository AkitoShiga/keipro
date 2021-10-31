#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    int value;
    cin >> N >> value;
    vector<int> A(N);
    for(int i=0; i<N; i++){ cin >> A[i]; }
    string ans = "No";
    for(int i=0; i<N; i++){
        if(value == A[i]) ans = "Yes";
    }
    cout << ans << endl;

    return 0;
}