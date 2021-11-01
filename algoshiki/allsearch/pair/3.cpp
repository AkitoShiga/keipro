#include <bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<int> A(N);
    for(int i=0; i<N; i++){
        cin >> A[i];
    }
    int count = 0;
    for(int i=0; i<A.size(); i++){
        for(int j=i+1; j<A.size(); j++){
            for(int k=j+1; k<A.size(); k++){
                if(max({A[i],A[j],A[k]}) == A[j])count++;
            }
        }
    }
    cout << count << endl;
}