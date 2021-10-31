#include<bits/stdc++.h>
using namespace std;

int main() {
    string s;
    char tmp;
    int n, m;
    cin >> s >> n >> m;
    tmp  = s[n-1];
    s[n-1] = s[m-1];
    s[m-1] = tmp;
    cout << s << endl;
    return 0;
}