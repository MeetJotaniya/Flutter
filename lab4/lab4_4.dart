import 'dart:io';

int primeCheck(int n){
  if(n<1){
    print("Enter positive integer.");
  }
  else{
    for(int i=2;i*i<=n;i++){
      if(n%i==0){
        return 0;
      }
    }
  }
  return 1;
}

void main(){
  stdout.write("Enter Number : ");
  int n = int.parse(stdin.readLineSync()!);
  int result = primeCheck(n);
  if(result == 1){
    print("$n is prime number.");
  }
  else{
    print("$n is not prime number.");
  }
}