import 'dart:io';

void main() {
  print("Enter number: ");
  int num = int.parse(stdin.readLineSync()!);
  int rev = 0;

  while (num != 0) {
    int rem = num % 10;
    rev = rev * 10 + rem;
    num = num ~/ 10;
  }

  stdout.write("Reversed number: $rev");
}