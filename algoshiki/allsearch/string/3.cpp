#include<bits/stdc++.h>
using namespace std;

int main() {
    string S;
    cin >> S;
    int count = 0;
    int s;
    for(int i=1; i<S.size(); i++) {
        s = S[i-1];
        if(s == S[i])count++;
    }
    cout << count << end;
    return 0;
}