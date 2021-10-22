#include<iostream>
#include<algorithm>
using std::min;

/**
 * 貪欲法
 * その場での最善を繰り返す
 */

// 硬貨リスト
const int V[6] = {1, 5, 10, 50, 100, 500};

/* 入力 */
// コインの枚数
int C[6];
// 金額
int A;

void main() {

    int ans = 0;

    // なるべく枚数を抑えたいので、金額の大きい硬貨から使用していく
    for (int i = 5; i >= 0; i--){

        int t = min(A/V[i], C[i]);
        A -= t * V[i];
        ans += t;

    }

    printf("%d\n", ans);

}