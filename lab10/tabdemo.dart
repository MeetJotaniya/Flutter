import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Tabdemo(),
));


class Tabdemo extends StatelessWidget {
  const Tabdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              child: Text("demo1"),
            ),
            Tab(
              child: Text("demo2"),
            ),
            Tab(
              child: Text("demo3"),
            )
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("demo1111111111111111111111111111111111111111111"),),
          Center(child: Text("demo2222222222222222222222222222222222222222222"),),
          Center(child: Text("demo3333333333333333333333333333333333333333333"),),
        ]),
      ),
    );
  }
}
