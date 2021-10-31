#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    int which = 0;
    for(int i=0; i<N; i++) {
        string tmp;
        cin >> tmp;
        if(tmp == "left")which++;
        else which--;
    }
    string ans;
    if (which > 0)ans = "left" ;
    else if(which < 0)ans = "right" ;
    else ans = "same";

    cout << ans << endl;

    return 0;
}