import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Listdemo(),
));


class Listdemo extends StatelessWidget {
   Listdemo({super.key});
  List<String> name = ["demo1","demo2","demo3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: name.length,
      itemBuilder: (context,index){
        return Padding(padding: const EdgeInsets.all(8.0),
        child: FlipInY(
          child: Container(
            height: 500,
            color: Colors.blue,
            child: Container(
              height: 500,
              color: Colors.blue,
              child: Text(
                "name:${name[index]}",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
        );
      },),
    );
  }
}
