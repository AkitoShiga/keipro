#include<algorithm>
#include<iostream>

using std::min;
using std::max;

int L, n;
int x[] = {2, 6, 7};

int main() {
    L = 10;
    n = 3;

    int minT = 0;

    for (int i = 0; i < n; i++) {
        minT = max(minT, min(x[i], L - x[i]));
    }

    int maxT = 0;

    for (int i = 0; i < n; i++) {
        maxT = max(maxT, max(x[i], L -x[i]));
    }

    printf("%d %d\n", minT, maxT);

}