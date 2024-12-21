import 'dart:io';

double calculateSimpleInterest(int p, int r, int t) {
  return (p * r * t) / 100;
}

void main() {
  stdout.write("Enter Principle Amount : ");
  int p = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Rate : ");
  int r = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Time : ");
  int t = int.parse(stdin.readLineSync()!);
  double simpleinterest = calculateSimpleInterest(p, r, t);
  print("Simple interest : $simpleinterest");
}
