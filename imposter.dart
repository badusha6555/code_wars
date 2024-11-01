//[2, 4, 0, 100, 4, 11, 2602, 36] -->  11 (the only odd number)

//[160, 3, 1719, 19, 11, 13, -21] --> 160 (the only even number)

int Imposter(List<int> arr) {
  bool isEven = arr[0] % 2 == 0;
  int evenCount = 0;
  int oddCount = 0;

  for (int i = 0; i < arr.length;) {
    if (arr[i] % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
    if (isEven && oddCount == 1) {
      for (var j = 0; i < arr.length; j++) {
        if (arr[j] % 2 == 0) {
          return arr[j];
        }
      }
    } else if (!isEven && evenCount == 1) {
      for (var j = 0; i < arr.length; j++) {
        if (arr[j] % 2 != 0) {
          return arr[j];
        }
      }
    }
  }
  return 0;
}

void main() {
  print(Imposter([2, 4, 0, 100, 4, 11, 2602, 36]));
  print(Imposter([160, 3, 1719, 19, 11, 13, -21]));
}
