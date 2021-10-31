#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<int> A(N);
    for(int i=0; i<N; i++) {
       cin >> A[i];
    }
    int minValue;
    minValue =  A[0];
    int idx = 0;

    for(int i=1; i<N; i++) {
        if(minValue > A[i]){
            minValue = A[i];
            idx = i;
        }
    }
    //cout << idx << endl;
    cout << minValue << endl;
    return 0;
}


