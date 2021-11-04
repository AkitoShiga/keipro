#include<bits/stdc++.h>
using namespace std;

int main() {
    int n, a;
    cin >> n >> a;
    /*
    int ans;
    if(n % a == 0) ans = n / a;
    else ans = n / a + 1;
    cout << ans << endl;
    */
    cout << (n + a - 1) / a << endl;
    return 0;
}