import 'dart:io';
void main(){
  print("Enter Temperature in Fahrenheit : ");
  double f = double.parse(stdin.readLineSync()!);
  double c = (f-32)*(5/9);
  stdout.write("Temperature in celcius : $c");
}