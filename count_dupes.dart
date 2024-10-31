void main() {
  // "abcde" -> 0 # no characters repeats more than once
  // "aabbcde" -> 2 # 'a' and 'b'
  var a =
      "swdefodfjmneiokdfdwsixndcefwoejnvdiwekgvidfkvmfvgdbhjskdfjhghdnfbgvfhndmxbhxmcnbfdnmcej";
  var b = a.split("").toList().length;
  var c = a.split("").toSet().length;
  print(b - c);
}
