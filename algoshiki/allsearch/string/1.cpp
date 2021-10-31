#include<bits/stdc++.h>
using namespace std;

int main() {
    string S;
    char c;
    cin >> S >> c;
    string ans = "No";
    for(int i=0; i<S.length(); i++) {
        if(S[i] == c)ans = "Yes";
    }
    cout << ans << endl;
    return 0;
}