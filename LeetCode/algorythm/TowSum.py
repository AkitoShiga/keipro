class Solution:
    def twosum(self, nums: List[int], target: int) -> List[int]:
        answer = [];

        for i in range(0, len(nums), 1):
            for j in range(i + 1, len(nums), 1):

                if (nums[i] + nums[j]) == target:
                    answer = [i, j];
                    break;

        return answer;
