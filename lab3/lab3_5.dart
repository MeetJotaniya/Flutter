import 'dart:io';
void main(){
  print("Enter String : ");
  String str = stdin.readLineSync()!;
  print("Reverse String : ${str.split('').reversed.join('')}");

}