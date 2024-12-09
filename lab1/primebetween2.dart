import 'dart:io';
void main(){
  print("Enter Starting Number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter Starting Number 2 : ");
  int num2 = int.parse(stdin.readLineSync()!);
  bool prime = true;
  stdout.write('prime numbers exits between $num1 to $num2 are : ');
  for(int i=num1;i<=num2;i++) {
    if(i <= 1){
      continue;
    }
    if( i ==2 || i ==3){
      prime = true;
    }else {
      prime = true;
      for (int j = 2; j*j <= i ; j++) {
        if ( i % j == 0) {
          prime = false;
          break;
        }
      }
    }
    if(prime){
      stdout.write('$i ');
    }
  }
}