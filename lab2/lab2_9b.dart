import 'dart:io';

void main() {
  List<int> arr = [];
  print("Enter number that how many numbers you want to enter in the array: ");
  int index = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < index; i++) {
    print("Enter element: ");
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }
  for (int i = 0; i < index; i++) {
    int count = 0;
    for (int j = 0; j < index; j++) {
      if (arr[i] == arr[j]) {
        count++;
      }
    }

    if (count > (index / 2)) {
      print(arr[i]);
      break;
    }
  }
}
