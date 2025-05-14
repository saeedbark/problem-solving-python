class Solution(object):
    def twoSum(self, nums, target):
        num_dict = {}
        for idx, num in enumerate(nums):
            complement = target - num
            if complement in num_dict:
                return [num_dict[complement], idx]
            num_dict[num] = idx
            
            
# First, create an instance of the Solution class
sol = Solution()

# Define your test inputs
nums = [2, 7, 11, 15]
target = 9
        
# Call the function and store the result
result = sol.twoSum(nums, target)

# Print the result
print("Result:", result)  # Expected output: [0, 1]            