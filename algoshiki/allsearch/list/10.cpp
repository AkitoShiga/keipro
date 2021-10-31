#include<bits/stdc++.h>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<int> B(9);

    int tmp;
    for(int i=0; i<N; i++) {
        cin >> tmp;
        B[tmp-1] += 1;
    }

    int ans = -1;
    int idx = -1;
    for(int i=0; i<9; i++) {
        if(ans < B[i])ans = B[i];
        idx = i;
    }
    cout << idx+1 << endl;
    return 0;
}
