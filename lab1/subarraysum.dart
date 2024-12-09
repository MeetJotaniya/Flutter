import "dart:io";
void main() {
  List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  int maxSum = findMaxSubarraySum(nums);
  print("The largest sum of the subarray is: $maxSum");
}

int findMaxSubarraySum(List<int> nums) {
  int currentSum = 0;
  int maxSum = nums[0];

  for (int num in nums) {
    currentSum = currentSum + num > num ? currentSum + num : num;

    maxSum = currentSum > maxSum ? currentSum : maxSum;
  }

  return maxSum;
}
