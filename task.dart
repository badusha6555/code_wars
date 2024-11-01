// Badhusha
// 1. Separate the Digits in an Array
// Easy
// Topics
// Companies
// Hint
// Given an array of positive integers nums, return an array answer that consists of the digits of each integer in nums after separating them in the same order they appear in nums.

// To separate the digits of an integer is to get all the digits it has in the same order.

// For example, for the integer 10921, the separation of its digits is [1,0,9,2,1].

// Example 1:

// Input: nums = [13,25,83,77]
// Output: [1,3,2,5,8,3,7,7]
// Explanation:
// - The separation of 13 is [1,3].
// - The separation of 25 is [2,5].
// - The separation of 83 is [8,3].
// - The separation of 77 is [7,7].
// answer = [1,3,2,5,8,3,7,7]. Note that answer contains the separations in the same order.
// Example 2:

// Input: nums = [7,1,3,9]
// Output: [7,1,3,9]
// Explanation: The separation of each integer in nums is itself.
// answer = [7,1,3,9].

// Constraints:

// 1 <= nums.length <= 1000
// 1 <= nums[i] <= 105

// Solution:

List convertToSingleDigit(List<int> nums) {
  List<int> result = [];
  for (int num in nums) {
    if (num == 0) {
      result.add(0);
    } else {
      List<int> digits = [];
      while (num > 0) {
        digits.add(num % 10);
        num = num ~/ 10;
      }
      result.addAll(digits.reversed);
    }
  }
  return result;
}

void main() {
  List<int> nums = [13, 25, 83, 77];
  print(convertToSingleDigit(nums));
}

class Solution {
  bool search(List<int> nums, int target) {
    for (int num in nums) {
      if (nums.contains(target)) {
        return true;
      } else {
        return false;
      }
    }
  }
}
