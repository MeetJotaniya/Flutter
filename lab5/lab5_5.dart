import 'dart:io';

class Friend{
  String name = '';
  int age = 0;
  String email = '';

  Friend(String name , int age , String email){
    this.name = name;
    this.age = age;
    this.email = email;
  }
  String str(){
    return 'Name : ${this.name} , age : ${this.age} , email : ${this.email}';
  }
}

void main() {
  Map<String, Friend> m = {
    "Meet": Friend("Meet", 18, "meetjotaniya07@gmail.com"),
    "Yash": Friend("Yash", 18, "yasha@gmail.com"),
    "jenil": Friend("jenil", 20, "jenil@gmail.com")
  };
  String searchName = "Yash";
  if(m.containsKey(searchName)){
    print("Details for ${searchName}");
    Friend f1 = m[searchName] as Friend;
    print(f1.name);
    print(f1.age);
    print(f1.email);
  }
  else{
    print("No details found for ${searchName}");
  }
}