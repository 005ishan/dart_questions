void main() {
  checkPalindrome(text: "pup");
}

void checkPalindrome({required String text}) {
  String reversed = "";

  for (int i = text.length - 1; i >= 0; i--) {
    reversed = reversed + text[i];
  }

  if (text == reversed) {
    print('"$text" is a palindrome.');
  } else {
    print('"$text" is not a palindrome.');
  }
}