import 'dart:io';
void main(){
  print("Enter marks of subject 1 : ");
  int mark1 = int.parse(stdin.readLineSync()!);
  print("Enter marks of subject 2 : ");
  int mark2 = int.parse(stdin.readLineSync()!);
  print("Enter marks of subject 3 : ");
  int mark3 = int.parse(stdin.readLineSync()!);
  print("Enter marks of subject 4 : ");
  int mark4 = int.parse(stdin.readLineSync()!);
  print("Enter marks of subject 5 : ");
  int mark5 = int.parse(stdin.readLineSync()!);

  double ans = (mark1+mark2+mark3+mark4+mark5)/5;
  stdout.write("Percentage : $ans%");
}