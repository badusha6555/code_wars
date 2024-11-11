// // 3300. Minimum Element After Replacement With Digit Sum
// You are given an integer array nums.

// You replace each element in nums with the sum of its digits.

// Return the minimum element in nums after all replacements.

// Example 1:

// Input: nums = [1,2,3,4,5]
// Output: 1

int sumOfDigits(int num) {
  int sum = 0;
  while (num > 0) {
    sum += num % 10;
    num ~/= 10;
  }

  return sum;
}

int minimumElementAfterReplacement(List<int> nums) {
  int minElement = nums[0];
  for (int i = 1; i < nums.length; i++) {
    int sum = sumOfDigits(nums[i]);
    if (sum < minElement) {
      minElement = sum;
    }
  }
  return minElement;
}

void main() {
  List<int> nums = [999, 19, 199];
  print(minimumElementAfterReplacement(nums));
}
