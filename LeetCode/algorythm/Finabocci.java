class Solution {
    public int fib(int n) {
        if(n == 0) return 0;
        if(n == 1) return 1;
        int first  = 0;
        int second = 1;
        int finabo = 1;
        n -= 1;
        while(n > 0) {
            finabo = second + first;
            first  = second;
            second = finabo;
            n--;
        }
        return finabo;
    }
}
