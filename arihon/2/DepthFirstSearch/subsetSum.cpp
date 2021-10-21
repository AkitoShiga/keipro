#include<iostream>
#include <type_traits>
using std::cout;
/*
 * 深さ優先探索
 *   探索を行う過程で、定めた時点に到達した時に手順を一つ戻して解を導く
 *   再帰関数で再現できる
 */

/*
 * 整数 a1 ~ an が与えられた時に、その中の幾つかを選択した和を整数 kと同じ値にできるかを判定する
 */
int a[] = {1, 2}; int n = 2;
int k = 9;
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
    /*
     * パラメーター i を引数にして新しくdfsを呼び出しているため、
     * 違うパラダイムが幾つも並行して実行されているイメージ
     */

    // 要素を追加
    if (dfs(i + 1, sum + a[i])) return true;
    // i = 4 まで行った世界線がfalseを返した結果
    // a[i] を追加して新しく始めるというイメージ
    // kが作れなくなったらfalseを返す

    return false;
}
