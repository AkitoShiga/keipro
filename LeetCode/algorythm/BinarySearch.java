class Solution {
    public int search(int[] nums, int target) {
        int pivot = 0;
        int left  = 0;
        int right = nums.length-1;
        while(left <= right) {
            pivot = left + (right - left)/2;
            if(nums[pivot] == target) return pivot; 
            if(target < pivot)right = pivot -1;
            else left = pivot +1;
        }
        return -1;
    }
}
