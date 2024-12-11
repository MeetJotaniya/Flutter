import "dart:io";

void main() {
  print("Enter marks 1 : ");
  int mark1 = int.parse(stdin.readLineSync()!);

  print("Enter marks 2 : ");
  int mark2 = int.parse(stdin.readLineSync()!);

  print("Enter marks 3 : ");
  int mark3 = int.parse(stdin.readLineSync()!);

  print("Enter marks 4 : ");
  int mark4 = int.parse(stdin.readLineSync()!);

  print("Enter marks 5 : ");
  int mark5 = int.parse(stdin.readLineSync()!);

  double percentage = (mark1 + mark2 + mark3 + mark4 + mark5)/5;
  print("Your result is = $percentage");

  if(percentage < 35){
    print("fail");
  }

  else if(percentage >= 35 && percentage < 45){
    print("Pass");
  }

  else if(percentage >= 45 && percentage < 60){
    print("Second class");
  }

  else if(percentage >= 60 && percentage < 70){
    print("first class");
  }

  else{
    print('Distinction');
  }
}