#include<bits/stdc++.h>
using namespace std;

int main() {
    string S, T;
    cin >> S >> T;

    bool same = false;
    for(int i=0; i<S.length() - T.length() + 1; i++) {

        //bool same = false;

        /*
        for(int j=0; j<T.length(); j++) {
            if(S[i+j] != T[j])same = false;
        }
        */

        if(S.substr(i, T.length()) == T)same = true;

        if(same){
            cout << "Yes" << endl;
            return 0;
        }

    }
    cout << "No" << endl;
    return 0;
}