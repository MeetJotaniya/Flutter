import 'dart:io';
void main(){
  print("Enter number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2 : ");
  int num2 = int.parse(stdin.readLineSync()!);

  int ans = num1 + num2;
  stdout.write("Addition of given 2 numbers is : $ans");
}