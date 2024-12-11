import 'dart:io';
void main(){
  print("Enter Number 1 : ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter Number 2 : ");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter Number 3 : ");
  int c = int.parse(stdin.readLineSync()!);

  (a>c)?((a>b)?print(a):print(b)):(c>b)?print(c):print(b);
}