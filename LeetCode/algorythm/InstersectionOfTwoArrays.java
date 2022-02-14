class Solution {
    public int[] intersection(int[] nums1, int[] nums2) {
        HashMap<Integer, Boolean> hm = new HashMap<>();
        List<Integer> answer = new ArrayList<>();
        for(int num : nums1) {
            hm.put(num, false);
        }
        for(int num : nums2) {
            if(hm.containsKey(num)){
                hm.replace(num, true);
            }
        }
        for(Map.Entry<Integer, Boolean> entry : hm.entrySet()) {
            if(entry.getValue()) {
                answer.add(entry.getKey());
            }
        }
        int[] result = new int[answer.size()];
        int i = 0;
        for(int ans : answer) {
            result[i] = ans;
            i++;
        }
        return result;
    }
}
