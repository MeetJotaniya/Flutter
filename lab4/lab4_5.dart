import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Enter Index that you want to enter numbers in list :");
  int index = int.parse(stdin.readLineSync()!);
  for(int i=0;i<index;i++){
    print("Enter Number : ");
    int n = int.parse(stdin.readLineSync()!);
    numbers.add(n);
  }
  Map<String, int> result = countEvenOdd(numbers);

  print('Number of even numbers: ${result["even"]}');
  print('Number of odd numbers: ${result["odd"]}');
}

Map<String, int> countEvenOdd(List<int> numbers) {
  int evenCount = 0;
  int oddCount = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  return {'even': evenCount, 'odd': oddCount};
}
