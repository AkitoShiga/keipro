#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    string ans = "";
    string tmp;
    for(int i=0; i<N; i++) {
        cin >> tmp;
        ans += tmp[0];
    }
    cout << ans;
    return 0;
}