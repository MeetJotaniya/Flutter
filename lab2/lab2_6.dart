import "dart:io";

void main() {
  print("Enter number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2 : ");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Enter operator which you want to perform : ");
  String choice = stdin.readLineSync()!;

  switch(choice){
    case '+':
      stdout.write(num1 + num2);
      break;

    case '-':
      stdout.write(num1 - num2);
      break;

    case '*':
      stdout.write(num1 * num2);
      break;

    case '/':
      stdout.write(num1 / num2);
      break;
  }
}