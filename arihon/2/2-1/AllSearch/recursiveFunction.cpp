#include<iostream>
using std::cout;

/**
 * 再帰関数
 * 設けた終了条件を満たすまで自身を呼び続ける
 */

int fact(int n);
int fib(int n);

int main() {

    //fact(10);
    fib(3);

    return 0;

}

/*
 * 直線的な再帰関数
 */
int fact(int n) {

   cout << "fact : " << n << "\n";
   if(n == 0) return 1;
   return n * fact(n -1);
}

/*
 * フィナボッチ数列
 * n > 1 で指数的に計算量が広がる
 */
int fib(int n) {

    cout << "fib : " << n << "\n";

    if(n <= 1) return n;
    return fib(n - 1) + fib(n - 2);

}
