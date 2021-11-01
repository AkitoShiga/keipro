#include <bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<string> A(N);
    for(int i=0; i<N; i++){
        cin >> A[i];
    }
    for(int i=0; i<A.size(); i++){
        for(int j=i+1; j<A.size(); j++){
            if(A[i]==A[j]){
                cout << "Yes" << endl;
                return 0;
            }
        }
    }
    cout << "No" << endl;
    return 0;
}