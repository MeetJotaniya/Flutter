 import 'dart:io';
void main(){
  print("Enter Number : ");
  double num = double.parse(stdin.readLineSync()!);
  while(num%2==0){
    num = num/2;
  }
  while(num%3==0){
    num = num/3;
  }
  while(num%5==0){
    num = num/5;
  }
  if(num==1){
    print("Number is ugly.");
  }
  else{
    print("Number is not Ugly.");
  }
}