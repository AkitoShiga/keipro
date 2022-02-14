class Solution {
    public void moveZeroes(int[] nums) {
        int lastNonZeroFoundAt = 0;
        for(int i = 0; i < nums.length; i++){
            //0 じゃない数字を見つけたら先頭からつめていく
            if(nums[i] != 0) {
                nums[lastNonZeroFoundAt] = nums[i];
                lastNonZeroFoundAt++;
            }
        }
        // つめきったら残りを0にする
        for(int i = lastNonZeroFoundAt; i < nums.length; i++) {
            nums[i] = 0;
        }
    }
}
