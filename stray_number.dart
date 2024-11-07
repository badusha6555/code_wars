// Find the stray number
// You are given an odd-length array of integers, in which all of them are the same, except for one single number.

// Complete the method which accepts such an array, and returns that single different number.

// The input array will always be valid! (odd-length >= 3)

// Examples
// [1, 1, 2] ==> 2
// [17, 17, 3, 17, 17, 17, 17] ==> 3

int stray(List<int> numbers) {
  int result = 0;
  for (int i = 1; i < numbers.length; i++) {
    result ^= numbers[i];
  }
  return result ^ numbers[0];
}

void main() {
  List<int> numbers = [17, 17, 3, 17, 17, 17, 17];
  print(stray(numbers));
}
