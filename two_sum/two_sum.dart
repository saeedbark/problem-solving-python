class Solution {
  List<int>? twoSum(List<int> nums, int target) {
    Map<int, int> numMap = {};

    for (int i = 0; i < nums.length; i++) {
      int num = nums[i];
      int complement = target - num;

      if (numMap.containsKey(complement)) {
        return [numMap[complement]!, i];
      }

      numMap[num] = i;
    }

    return null;
  }
}

void main() {
  final sol = Solution();

//  Define your test inputs
  final nums = [2, 7, 11, 15];
  final target = 9;

//  Call the function and store the result
  final result = sol.twoSum(nums, target);

// Print the result
  print("Result:, $result");
}
