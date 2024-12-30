import 'dart:io';
void main(){
  List<int> li = [];
  int len = int.parse(stdin.readLineSync()!);
  print("Enter the number in List : ");
  for(int i =0;i<len;i++) {
    int input = int.parse(stdin.readLineSync()!);
    li.add(input);
  }
  int sum = 0;
  for(int i=0;i<len;i++) {
    if(li[i]%3==0 || li[i]%5==0){
    sum = sum + li[i];
    }
  }
  print(sum);
}
