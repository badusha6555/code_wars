void removeVowels(String str) {
  String vowels = "aeiouAEIOU";
  String result = "";
  for (int i = 0; i < str.length; i++) {
    if (!vowels.contains(str[i])) {
      result += str[i];
    }
  }
  print(result);
}

void main() {
  removeVowels("Hello World");
}
