int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int uniqueIndex = 0;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[uniqueIndex]) {
      nums[++uniqueIndex] = nums[i];
    }
  }

  return uniqueIndex + 1;
}

void main() {
  List<int> nums1 = [1, 1, 2];
  int result1 = removeDuplicates(nums1);
  print('Output: $result1, nums = ${nums1.sublist(0, result1).map((e) => e.toString()).toList() + List.filled(nums1.length - result1, "_")}');

  List<int> nums2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  int result2 = removeDuplicates(nums2);
  print('Output: $result2, nums = ${nums2.sublist(0, result2).map((e) => e.toString()).toList() + List.filled(nums2.length - result2, "_")}');
}
