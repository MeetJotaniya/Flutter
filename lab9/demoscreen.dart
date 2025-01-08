import 'package:flutter/material.dart';

class Demoscreen extends StatelessWidget {
  var name;
  Demoscreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/birthday.jpg"),
                    fit: BoxFit.cover)),
          )),
          Center(
            child: Text("Happy Birthday \n       ${name}",style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
