#include<bits/stdc++.h>
using namespace std;

int main() {
    int a, b;
    cin >> a >> b;
    int x = 1;
    int lesser = min(a, b);
    for(int i = 2; i <= lesser; i++ ) {
        if(a%i==0 && b%i==0)x = i;
    }
    cout << x << endl;
    return 0;
}