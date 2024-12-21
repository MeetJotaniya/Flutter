import 'dart:io';

int findmaxfrom2(n1,n2){
  if(n1>n2){
    return n1;
  }
  else{
    return n2;
  }
}
void main(){
  print("Enter Number 1 : ");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Enter Number 2 : ");
  int n2 = int.parse(stdin.readLineSync()!);

  int maxnum = findmaxfrom2(n1, n2);
  stdout.write("Maximum number from $n1 and $n2 is : $maxnum");
}