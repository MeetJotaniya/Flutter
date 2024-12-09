import 'dart:io';
void main(){
  print("Enter Your Name : ");
  String str = stdin.readLineSync()!;
  stdout.write("Your Name Is $str");
}