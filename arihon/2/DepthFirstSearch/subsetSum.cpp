#include<iostream>
using std::cout;
/*
 * 深さ優先探索
 *   探索を行う過程で、定めた時点に到達した時に手順を一つ戻して解を導く
 *   再帰関数で再現できる
 */

/*
 * 整数 a1 ~ an が与えられた時に、その中の幾つかを選択した和を整数 kと同じ値にできるかを判定する
 */

int a[] = {1, 2, 4, 7};
int n = 4;
int k = 15;

bool dfs(int i, int sum);

int main() {

    // 初期値0から始める
    if (dfs(0, 0)) printf("Yes\n");
    else printf("No\n");

    return 0;
}

bool dfs(int i, int sum) {

/*
 * i -> 現在の深度
 * n -> 定めた深度
 */
    cout << "i : " << i << " sum : " << sum << "\n";
    if(i == n) return sum == k;

    // 要素を追加しない
    if (dfs(i + 1, sum)) return true;

    // 要素を追加
    if (dfs(i + 1, sum + a[i])) return true;

    // kが作れなくなったらfalseを返す
    return false;
}