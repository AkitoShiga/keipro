class Solution {
    int left  = 1;
    int right = n;
    // whileを抜ける時 left = right = midつまり境界値を見つけた時
    while(left < right) {
        int mid = left + (right - left) / 2;
        if(isBadVersion(mid)) {
            // ture ならright 以降は全てTrue
            right = mid;
        } else {
            // false ならleft 以前は全てfalse
            left  = mid+1;
        }
    }
    return left;
}
