int countVowels(String n) {
  int count = 0;
  for (int i = 0; i < n.length; i++) {
    if (n[i] == 'a' ||
        n[i] == 'e' ||
        n[i] == 'i' ||
        n[i] == 'o' ||
        n[i] == 'u') {
      count++;
    }
  }
  return count;
}

void main() {
  print(countVowels("Hello World"));
}
