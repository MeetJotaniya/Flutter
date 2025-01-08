import 'package:flutter/material.dart';

class Timedemo extends StatelessWidget {
  var name;
  Timedemo({super.key});

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
        ],
      ),
    );
  }
}
