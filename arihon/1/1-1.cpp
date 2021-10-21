#include<cstdio>

const int MAX_N = 50;

int main() {
    int n, m, k[4];
    //int n, m, k[MAX_N];

    scanf("%d %d", &n, &m);

    for (int i = 0; i < n; i++) {
        scanf("%d", &k[i]);
    }

    bool f = false;
    for (int a = 0; a < n; a++) {
        for (int b = 0; b < n; b++) {
            for (int c = 0; c < n; c++) {
                 for (int d = 0; d < n; d++) {
                     // m を満たす組み合わせが
                     // 配列の中に存在しているか?
                     if(k[a] + k[b] + k[c] + k[d] == m){
                         f = true;
                     }
                 }
            }
        }
    }

    if (f) puts("Yes");
    else puts("No");

    return 0;

}