///************Merge Sorted Array******************** */

/// Complexity
///
///Time complexity:
///
///O(m + n)

/// Space complexity:
///
/// O(1)

void merge(List<int> nums1, int m, List<int> nums2, int n) {
  int i = 0;
  int j = 0;

  while (j < n && (i - j) < m) {
    if (nums2[j] <= nums1[i]) {
      nums1.insert(i, nums2[j]);
      nums1.removeLast();
      j++;
      i++;
    } else {
      i++;
    }
  }
  while (j < n && i < n + m) {
    nums1[i] = nums2[j];
    i++;
    j++;
  }
}

///************Remove Ele******************** */

/// Complexity
///
///Time complexity:
///
///O(n)

/// Space complexity:
///
/// O(1)
///
///

int removeElement(List<int> nums, int val) {
  int k = nums.length - 1; // the initial length of filtered left side
  int i = 0;
  while (i <= k) {
    if (nums[i] == val) {
      nums.add(nums[i]);
      nums.removeAt(i);
      k--;
    } else {
      i++;
    }
  }

  return k + 1;
}
