import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab/lab9/demoscreen.dart';

void main() => runApp(MaterialApp(
      home: Birthdaycard(),
    ));

class Birthdaycard extends StatelessWidget {
  TextEditingController name = TextEditingController();
   Birthdaycard({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Expanded(
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: "Enter your name :",
                  hintText: "Enter your name"
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Demoscreen(name : name.text.toString())));
                  },
                  child: Text("Navigate"),)
            ],
          ),
        ),
      ),
    );
  }
}
