#include<bits/stdc++.h>
using namespace std;

typedef long long ll;
int N = 3;
int L[] = {8, 5, 8};

int main() {

    ll ans = 0;

    while(N > 1) {

        //{8, 13, 8}
        int mii1 = 0;
        int mii2 = 1;
        // 8 > 5                    1, 0
        if(L[mii1] > L[mii2]) swap(mii1, mii2);

        for(int i = 2; i < N; i++) {

        //最も短い板の組み合わせを探す
            if(L[i] < L[mii1]) {
                mii2 = mii1;
                mii1 = i;
            }
            else if( L[i] < L[mii2]){
                mii2 = i;
            }

        }
            //13 21
            int t = L[mii1] + L[mii2];
            ans += t;//13 34
                                //1, 0
            if(mii1 == N - 1) swap(mii1, mii2);
            //{8, 13, 8}
            //{8, 24, 8}
            L[mii1] = t; // 1番短いものが 先程の2つの和になる
            //{24,24,8}
            L[mii2] = L[N - 1]; // 2番目は配列の末尾に移動。 Nがデクリメントされるため二度と登場しない
            // 2
            // 1
            N--;

        printf("%lld\n", ans);
    }
}