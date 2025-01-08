import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_lab/lab9/timedemo.dart';

void main() => runApp(MaterialApp(
  home: Timeduration(),
));


class Timeduration extends StatefulWidget {
  const Timeduration({super.key});

  @override
  State<Timeduration> createState() => _TimedurationState();
}

class _TimedurationState extends State<Timeduration> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Timedemo()),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("few sec page"),
    );
  }
}
