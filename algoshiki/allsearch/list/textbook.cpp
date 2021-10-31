#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    int value;
    cin >> value;
    vector<int> data(N);
    for(int i=0; i<N; i++) {
        cin >> data[i];
    }
    bool flag = false;

    // 線形探索
    for(int j=0; j<N; j++) {
        if(data[j] == value)flag = true;
    }

    if(flag) cout << "Yes" << endl;
    else cout << "No" << endl;

    return 0;
}