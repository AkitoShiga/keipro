#include<stdio.h>
#include<iostream>
#include<algorithm>
using std::sort;

const int MAX_N = 1000;
int N, R;
int X[MAX_N];

int main() {

    sort(X, X + N);
    int i   = 0;
    int ans = 0;
    // 点がなくなるまで
    while(i < N) {

        int s = X[i++]; // 始点、Rの範囲外でもっとも遠い点

        // 左辺インデックスない  かつ 始点とRの範囲内
        while(i < N && X[i] <= s + R) i++;
            int p = X[i - 1];
        // 右辺も同様に行う
        while(i < N && X[i] <= p + R) i++;

        ans++;
    }
    printf("%d\n", ans);
}
