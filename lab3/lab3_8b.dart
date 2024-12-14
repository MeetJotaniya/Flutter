import 'dart:io';

void main(){
  print("Enter String : ");
  String str = stdin.readLineSync()!;

  if(str == null || str.isEmpty){
    stdout.write("Enter Valid input.");
    return;
  }
  List<String> words = str.split(' ');

  Map<String,int> wordCount = {};

  for(String word in words){
    word = word.toLowerCase();
    if (wordCount.containsKey(word)) {
      wordCount[word] = wordCount[word]! + 1;
    } else {
      wordCount[word] = 1;
    }
  }
  print("Word counts : $wordCount");
}