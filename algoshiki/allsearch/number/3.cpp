#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    string prime = "Yes";
    if(N == 1) prime = "No";
    for(int i = 2; i < N; i++ ) {
        if(N%i==0)prime = "No";
    }
    cout << prime << endl;
    return 0;
}