#include<algorithm>
#include<iostream>

using std::min;
using std::max;

int L, n;
int x[];

int main() {

    int minT = 0;

    for (int i = 0; i < n; i++) {
        minT = min(minT, min(x[i], L - x[i]));
    }
    
    int maxT = 0;

    for (int i = 0; i < n; i++) {
        maxT = max(maxT, max(x[i], L -x[i]));
    }
    
    printf("%d %d\n", minT, maxT);

}