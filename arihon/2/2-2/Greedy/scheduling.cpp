#include<iostream>
#include<utility>
#include<algorithm>
using std::pair;
using std::sort;

/**
 * 選択できる仕事のなかで、最も終了時間が早いものを選択する
 */

const int MAX_N = 100000;
int N, S[MAX_N], T[MAX_N];

// 仕事をソートするためのpair配列
pair<int, int> itv[MAX_N];

void main() {

    //itvを終了時間の早い順に並び替える
    for(int i = 0; i < N; i++) {
        itv[i].first  = T[i];
        itv[i].second = S[i];
    }
    sort(itv, itv + N);

    // tは最後に選んだ仕事の終了時間
    int ans = 0, t = 0;

    for(int i = 0; i < N; i++) {
        // 終了時間より、開始時間の方が遅かったら
        if(t < itv[i].second) {
            ans++;
            // 終了時間を格納する
            t = itv[i].first;
        }
        // ソートにより終了時間が早い順に並べられているため、精査の必要がない
    }

    printf("%d\n", ans);

}