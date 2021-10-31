#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<int> A(N);
    for(int i=0; i<N; i++){
        cin >> A[i];
    }
    int sum;
    for(int item: A) {
        sum += item;
    }
    int avg = sum / N;
    cout << avg << endl;

    return 0;
}