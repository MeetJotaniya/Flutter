int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num; //XOR
  }
  return result;
}

void main() {
  List<int> nums1 = [2, 2, 1];
  print("The single number in [2, 2, 1] is: ${singleNumber(nums1)}");

  List<int> nums2 = [4, 1, 2, 1, 2];
  print("The single number in [4, 1, 2, 1, 2] is: ${singleNumber(nums2)}");

  List<int> nums3 = [1];
  print("The single number in [1] is: ${singleNumber(nums3)}");
}
