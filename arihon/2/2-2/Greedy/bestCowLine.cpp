#include<stdio.h>
#include<iostream>
using std::string;

/*
 * 文字数Nの文字列Sが与えられ、N文字の文字列Tを作成する
 * Tの長さは0から始まり、下記いづれかの操作が与えられる
 * 1. Sの先頭を1文字削除。Tの末尾に追加
 * 1. Sの末尾を1文字削除。Tの末尾に追加
 * 辞書順で最小のTを作成する
 */

int N;
const int MAX_N = 1000;
char S[MAX_N + 1];

//charsの先頭と末尾を評価
//
//
int main() {

    int a = 0; //先頭
    int b = N - 1; //末尾

    while(a <= b) {
        bool left = false;

        for(int i = 0; i <= S[b - i]; i++){ // 文字列の中心に到達するまで

            if(S[a + i] < S[b - i]){ //
                left = true;
                break;
            }
            else if(S[a + i] > S[b - i]){
                left = false;
                break;
            }

        }
        // 小さい方を出力する
        if(left) putchar(S[a++]);
        else putchar(S[b--]);
    }
    putchar('\n');
    return 0;

}


