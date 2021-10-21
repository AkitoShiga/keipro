#include<iostream>


int N; // 縦軸
int M; // 横軸
char field[100][101]; // 最大値


/**
 * 現在地から連続するWを.に変換する
 * 変換した回数が答えになる
 */
void dfs(int x, int y);

int main() {

    int res = 0;
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < M; j++) {
            if(field[i][j] == 'W') {

                dfs(i, j);
                res++;

            }
        }
    }

}

// 現在地と、近接する8方向を再帰的に探索して W -> . に変換
void dfs(int x, int y) {

    field[x][y] = '.';

    for(int dx = -1; dx <= 1; dx++) {
        for(int dy = -1; dy <= 1; dy++) {

            int nx = x + dx;
            int ny = y + dy;

            bool isYWithinRange =  ny >= 0 && ny < M;
            bool isXWithinRange =  nx >= 0 && nx < N;
            bool isW = field[nx][ny] == 'W';

            if(isYWithinRange && isXWithinRange && isW) dfs(nx, ny);
        }
    }
    return;
}