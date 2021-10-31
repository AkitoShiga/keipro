#include<bits/stdc++.h>
using namespace std;

bool countDividers(int x, int K) {
    int count = 0;
    for(int i=1; i<=x; i++){
        if(x % i == 0)count++;
    }
    return K == count;
}
int main() {
    int N, K;
    cin >> N >> K;
    int count = 0;
    for(int i=1; i<=N; i++){
        if(countDividers(i, K))count++;
    }
    cout << count << endl;
    return 0;
}