import 'dart:io';

void main(){
  print("Enter index of array : ");
  int index = int.parse(stdin.readLineSync()!);
  List<String> name_arr = [];
  List<int> height_arr = [];
  for(int i=0;i<index;i++){
    print("Enter Name : ");
    String name = stdin.readLineSync()!;
    name_arr.add(name);
  }
  for(int i=0;i<=index;i++){
    print("Enter Height : ");
    int height = int.parse(stdin.readLineSync()!);
    height_arr.add(height);
  }
  var paired = List.generate(name_arr.length, (index) => {'string': name_arr[index], 'height': height_arr[index]});
  paired.sort((a, b) => (a['height'] as int).compareTo(b['height'] as int));

  var sortedStrings = paired.map((e) => e['string']).toList();
  print(sortedStrings);
}