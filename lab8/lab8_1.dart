import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Lab81(),
    ));

class Lab81 extends StatelessWidget {
  const Lab81({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/images/image.jpg'),
          ),
          Center(
            child: Text(
              "Happy Birthday",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                  backgroundColor: Colors.black.withOpacity(0.5)),
            ),
          )
        ],
      ),
    );
  }
}
