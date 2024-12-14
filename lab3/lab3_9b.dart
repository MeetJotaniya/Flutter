import 'dart:io';

void main(){
  List<int> arr = [];
  print("Enter number that how many numbers you want to enter in the array: ");
  int index = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < index; i++) {
    print("Enter element: ");
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
    print("Your Arr : $arr");
  }
  stdout.write("Enter number you want to enter : ");
  int input = int.parse(stdin.readLineSync()!);

  stdout.write("Enter index where you want to enter number : ");
  int ind = int.parse(stdin.readLineSync()!);

  arr.insert(ind, input);
  print("Your Updated Arr : $arr");
}