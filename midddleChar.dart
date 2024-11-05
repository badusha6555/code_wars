// Get the Middle Character
// You are going to be given a non-empty string. Your job is to return the middle character(s) of the string.

// If the string's length is odd, return the middle character.
// If the string's length is even, return the middle 2 characters.

void main() {
  String str = "Badushas";
  String middle = getMiddle(str);
  print(middle);
}

String getMiddle(String str) {
  int length = str.length;
  int middle = length ~/ 2;
  if (length % 2 == 0) {
    return str.substring(middle - 1, middle + 1);
  } else {
    return str.substring(middle, middle + 1);
  }
}
