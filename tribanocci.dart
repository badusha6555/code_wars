void main() {
  int n = 20;
  List<int> tribonacci = [];
  for (int i = 0; i < n; i++) {
    if (i == 0) {
      tribonacci.add(0);
    } else if (i == 1) {
      tribonacci.add(0);
    } else if (i == 2) {
      tribonacci.add(1);
    } else {
      tribonacci.add(tribonacci[i - 1] + tribonacci[i - 2] + tribonacci[i - 3]);
    }
  }
  print(tribonacci);
}
