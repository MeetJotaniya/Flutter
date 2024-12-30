import 'dart:io';
void main(){
  List<String> city = ["Delhi","Mumbai","Banglore","Hyderabad","Ahmedabad"];

    for(int i = 0;i<city.length;i++){
      if(city[i] == 'Ahmedabad'){
        city.replaceRange(i , i+1 , ["Surat"]);
      }
    }
    print(city);
}