#include<bits/stdc++.h>
using namespace std;

bool checkIsPrime(int x) {
    bool isPrime = true;
    if(x == 1){
        isPrime = false;
        return isPrime;
    }
    for(int i=2; i<x; i++){
       if(x%i==0){
           isPrime = false;
           break;
       }
    }
    return isPrime;
}
int main() {
    int N;
    cin >> N;
    vector<int>A(N);
    for(int i=0; i<N; i++){
        cin >> A[i];
    }
    int count = 0;
    for(int i=0; i<N; i++){
        if(checkIsPrime(A[i]))count++;
    }
    cout << count << endl;
    return 0;
}