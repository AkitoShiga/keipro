#include<iostream>
#include<utility>
#include<string>
#include<queue>
using std::pair;
using std::queue;

typedef pair<int, int> P;

const int INF = 100000000; // 迷路の未達、到達不可地点
const int MAX_N = 100; // 縦軸の最大サイズ
const int MAX_M = 100; // 横軸の最大サイズ

char maze[MAX_N][MAX_M + 1];
int N, M; // 迷路のサイズ
int sx, sy; // スタート地点
int gx, gy; // ゴール地点

int d[MAX_N][MAX_M]; // 最短距離を格納する

// 移動4方向のベクトル
int dx[4] = {1, 0, -1, 0};
int dy[4] = {1, 0, -1, 0};

// スタート地点からゴール地点までの最短距離を求める
int bfs(){

    // 初期化
    queue<P> que; // <int, int>
    for(int i = 0; i < N; i++)
        for(int j = 0; j < M; j++) d[i][j] = INF;
    que.push(P(sx, sy));
    d[sx][sy] = 0;

    while(que.size()) {
        // 現在地を確認する
        P p = que.front();
        que.pop();

        // 現在地がゴールだったら終了する
        if(p.first == gx && p.second == gy) break;

        //移動できる4方向をループする
        for(int i = 0; i < 4; i++) {
            //移動後の座標を nx, ny とする
            int nx = p.first + dx[i];
            int ny = p.second + dy[i];

            bool canXMove     = nx >= 0 && nx < N;
            bool canYMove     = ny >= 0 && ny < M;
            bool isNotWall    = maze[nx][ny] != '#';
            bool isNotReached = d[nx][ny] == INF;

            if(canXMove && canYMove && isNotWall && isNotReached) {
                que.push(P(nx, ny));
                // whileとループの分だけ加算されるわけではなく、到達時点の値に加算される
                d[nx][ny] = d[p.first][p.second] + 1;
            }
        }
       // 一回ループしたらすぐ判定って感じ
    }

    return d[gx][gy];

}

int main() {

    int res = bfs();
    printf("d\n", res);

    return 0;

}