#include<bits/stdc++.h>
using namespace std;

int main() {
    int u, t, a;
    cin >> u >> t >> a;
    //cout << t * ( a - u + t -1) / t + u << endl;
    cout << u + ( a - u  + t -1) / t * t << endl;
    return 0;
}