#include <bits/stdc++.h>
using namespace std;

int main() {
    int N;
    string S;
    cin >> N >> S;
    int count = 0;
    for(int i=0; i<N; i++){
        for(int j=i+1; j<N; j++){
            if(S[i]==S[j])count++;
        }
    }
    cout << count << endl;
    return 0;
}