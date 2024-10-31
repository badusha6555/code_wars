// divisors(12) --> [2, 3, 4, 6]
// divisors(25) --> [5]
// divisors(13) --> "13 is prime"

dynamic divisors(int n) {
  List<int> divisorList = [];
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      divisorList.add(i);
    }
  }
  if (divisorList.isEmpty) {
    return "$n is prime";
  }
  return divisorList;
}

void main() {
  print(divisors(12));
  print(divisors(25));
  print(divisors(13));
}
