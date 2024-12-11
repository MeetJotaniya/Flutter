import 'dart:io';
void main(){
  print("Enter String : ");
  String str = stdin.readLineSync()!;
  print(str.trim().split(" ").last.length);
}