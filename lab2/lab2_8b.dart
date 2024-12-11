import 'dart:io';
void main(){
  print("Enter Minute : ");
  int m = int.parse(stdin.readLineSync()!);

  print("Enter Hour : ");
  int h = int.parse(stdin.readLineSync()!);

  double angle = (30*h) - (5.5*m);
  
  if(angle>=0){
    stdout.write("Angle between Hour and Minute hands of a clock is : $angle");
  }
  else{
    stdout.write("Angle between Hour and Minute hands of a clock is: ${angle+360}");
  }
}