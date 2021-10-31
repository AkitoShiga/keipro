#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    string tmp;
    int ans;
    for(int i=0; i<N; i++) {
        cin >> tmp;
        ans += tmp.length();
    }
    cout << ans << endl;

    return 0;
}