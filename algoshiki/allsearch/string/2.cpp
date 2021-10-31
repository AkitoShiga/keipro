#include<bits/stdc++.h>
using namespace std;

int main() {
    string S;
    cin >> S;
    string ans = "Yes";
    for(int i=0; i<S.length()/2; i++) {
        if(S[i] != S[S.length() - (i+1)])ans = "No";
        break;
    }
    cout << ans << endl;
    return 0;
}