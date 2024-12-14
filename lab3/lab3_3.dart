import 'dart:io';
void main(){
  print("Enter Number : ");
  int num = int.parse(stdin.readLineSync()!);
  bool prime = true;
  for(int i = 2 ; i <= num/2 ; i++){
    if(num % i == 0){
      prime = false;
      break;
    }
  }
  if(prime){
    print("Given number is prime.");
  }
  else{
    print("Given number is not prime");
  }
}