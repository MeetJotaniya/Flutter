import 'dart:io';

List<int> generateFibonacciSeries(int n) {
  List<int> fibonacci = [0, 1];
  for (int i = 2; i < n; i++) {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }
  return fibonacci.sublist(0, n);
}

void main() {
  stdout.write("Enter the number of terms for the Fibonacci series: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print("Please enter a positive integer.");
  } else {
    List<int> fibonacciSeries = generateFibonacciSeries(n);

    print("The Fibonacci series with $n terms is: $fibonacciSeries");
  }
}
