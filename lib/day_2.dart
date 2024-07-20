///************Remove Duplicates From Sorted Array******************** */

/// Intuition
///
/// Since the array is in a non-decreasing order , if there is  a duplicated
/// element it must be the one just following it

/// Approach
///
/// Iterate through the array if next element equals to the current
///remove it , else we increase the counter i

/// Complexity
///
///Time complexity:
///
///O(N)

/// Space complexity:
///
/// O(1)

int removeDuplicates(List<int> nums) {
  int i = 0;
  while (i < nums.length - 1) {
    if (nums[i] == nums[i + 1]) {
      nums.removeAt(i);
      continue;
    }
    i++;
  }

  return nums.length;
}
