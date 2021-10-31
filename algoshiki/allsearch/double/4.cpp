#include<bits/stdc++.h>
using namespace std;

int main() {
    string S;
    cin >> S;
    int count = 0;
    vector<int> A(26);
    for(int i=0; i < S.size(); i++){
        A[S[i]-97] = 1;
    }
    int ans = ;
    for(int i=0; i < 26; i++){
        ans += A[i];
    }
    cout << ans << endl;
    return 0;
}