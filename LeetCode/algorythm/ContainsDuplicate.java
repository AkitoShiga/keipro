class Solution {
    public boolean containtsDuplicate(int[] nums) {
        Set<Integer> subArray = new HashSet<>();
        for(int i =0; i < nums.length; i++) {
            if(!subArray.add(nums[i])){
                return true;
            }
        }
        return false;
    }
}
