// Input: [0, 1, 4]
// Output: "odd"

// Input: [0, -1, -5]
// Output: "even"
void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, -12];
  if (arr.reduce((a, b) => a + b).isEven) {
    print("even");
  } else {
    print("odd");
  }
}
