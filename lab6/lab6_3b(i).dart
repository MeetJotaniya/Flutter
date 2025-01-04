import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Layout(),
));

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Layout'
          ),
        ),
        body: Row(
          children : [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                      )
                  ),
                  Expanded(child: Container(
                    color: Colors.green,
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex : 2,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                      flex : 2,
                      child: Container(
                        color: Colors.pink,
                      )
                  ),
                  Expanded(child: Container(
                    color: Colors.black,
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
                      )
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

