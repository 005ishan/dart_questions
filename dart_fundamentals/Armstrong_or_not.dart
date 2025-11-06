void main() {
  checkArmstrong(number: 153);
}

void checkArmstrong({required int number}) {
  int original = number;
  int sum = 0;

  int digits = number.toString().length;

  while (number > 0) {
    int remainder = number % 10;
    int power = 1;

    for (int i = 0; i < digits; i++) {
      power = power * remainder;
    }

    sum = sum + power;
    number = number ~/ 10;
  }

  if (sum == original) {
    print("$original is an Armstrong number.");
  } else {
    print("$original is not an Armstrong number.");
  }
}