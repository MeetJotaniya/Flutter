import 'dart:io';
void main(){
  print("Enter Number : ");
  int num = int.parse(stdin.readLineSync()!);
  int ans = 1;

  for(int i = num ; i > 1 ; i--){
    ans = ans * i;
  }
  print("Factorial of Given Number is : $ans");
}