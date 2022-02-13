class Solution {
    public int maxProfit (int[] price) {
        int max = 0;
        int current = price[0];
        for(int i = 1; i < price.length; i++) {
            current = Math.min(current, price[i]);
            max = Math.max(price[i]-current, max);
        }
        return max;
    }
}
