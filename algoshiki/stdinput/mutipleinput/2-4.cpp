#include<bits/stdc++.h>
using namespace std;

int main() {
    int a, b;
    cin >> a >> b;

    bool divide = b % a == 0;

    if(divide) cout << "yes" << endl;
    else cout << "no" << endl;

    return 0;
}