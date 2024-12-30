import 'dart:io';
void main() {
  Map<String, int> m = new Map();
  for (int i = 0; i<5; i++) {
    print("Enter Name : ");
    String name = stdin.readLineSync()!;
    print("Enter Number : ");
    int num = int.parse(stdin.readLineSync()!);
    m[name] = num;
  }
  print(m);
}