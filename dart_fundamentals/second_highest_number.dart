import 'dart:math';

void main() {
  List<int> arr = [];

  for (int i = 0; i < 10; i++) {
    int randomNum = Random().nextInt(101);
    arr.add(randomNum);
  }

  print("Second largest no is ${findSecondHighest(array: arr)}");
}

int findSecondHighest({required List array}) {
  int secondHighest = 0;
  int highest = 0;
  for (int i in array) {
    if (i > highest) {
      secondHighest = highest;
      highest = i;
    }
  }

  return secondHighest;
}