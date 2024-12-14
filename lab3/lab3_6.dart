import "dart:io";

void main() {
  int evenSum = 0;
  int oddSum = 0;

  while (true) {
    print("Enter number : ");
    int number = int.parse(stdin.readLineSync()!);


    if (number == 0) {
      print("The positive even sum is = $evenSum");
      print("The negative odd sum is = $oddSum");
      break;
    }

    if (number > 0 && number % 2 == 0) {
      evenSum = evenSum + number;
    }

    if (number < 0 && number % 2 == 1) {
      oddSum = oddSum + number;
    }
  }
}