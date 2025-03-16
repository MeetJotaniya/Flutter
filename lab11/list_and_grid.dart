import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ListAndGrid(),
    ));

class ListAndGrid extends StatefulWidget {
  const ListAndGrid({super.key});

  @override
  State<ListAndGrid> createState() => _ListAndGridState();
}

List<String> name = ['name1', 'name2', 'name3', 'name4', 'name5'];

class _ListAndGridState extends State<ListAndGrid> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CupertinoSwitch(
          value: _lights,
          onChanged: (bool value) {
            setState(() {
              _lights = !_lights;
            });
          },
        ),
      ),
      body: Column(
        children: [
          _lights?
          Container(
            height: 500, // Set height for the ListView
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50, // Adjusted height
                    color: Colors.blue,
                    child: Text(
                      "name: ${name[index]}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              },
            ),
          ):
          Expanded(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(name[index]),
                );
              },
              itemCount: name.length,
            ),
          ),
        ],
      ),
    );
  }
}
