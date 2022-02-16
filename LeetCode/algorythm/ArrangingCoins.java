class Solution {
    public int arrangeCoins(int n) {
        int stair = 0;
        int amount = 0;

        if(n == 0) return 0;
        while(true) {
            if(n - (amount+1) > -1){
                n -= amount + 1;
                amount++;
                stair++;
            } else {
                break;
            }
        }
        return stair;
    }
}
