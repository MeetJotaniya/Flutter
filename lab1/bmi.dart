import 'dart:io';
void main(){
  print("Enter your weight in pound : ");
  double wp = double.parse(stdin.readLineSync()!);
  print("Enter your height in inches : ");
  double hi = double.parse(stdin.readLineSync()!);

  double wkg = (wp*0.45359237);
  double hm = (hi*0.0254);
  stdout.write("Weight in kg : $wkg ");
  stdout.write("Height in meter : $hm ");
  double bmi = wkg/(hm*hm);
  stdout.write("Bmi : $bmi");
}
