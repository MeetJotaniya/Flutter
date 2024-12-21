List<int> intersect(List<int> nums1, List<int> nums2) {
  // Sort the arrays for the result to be in sorted order
  nums1.sort();
  nums2.sort();

  List<int> result = [];
  int i = 0, j = 0;

  // Use two pointers to find common elements
  while (i < nums1.length && j < nums2.length) {
    if (nums1[i] == nums2[j]) {
      result.add(nums1[i]);
      i++;
      j++;
    } else if (nums1[i] < nums2[j]) {
      i++;
    } else {
      j++;
    }
  }

  return result;
}

void main() {
  List<int> nums1 = [1, 2, 2, 1];
  List<int> nums2 = [2, 2];
  print('Output: ${intersect(nums1, nums2)}');  // Output: [2, 2]

  List<int> nums3 = [4, 9, 5];
  List<int> nums4 = [9, 4, 9, 8, 4];
  print('Output: ${intersect(nums3, nums4)}');  // Output: [4, 9]
}
