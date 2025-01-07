import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Birthday(),
));

class Birthday extends StatefulWidget {
  @override
  _BirthdayState createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  TextEditingController name = TextEditingController();
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birthday Wishes"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: "Enter Name",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  flag = true; // Update the flag to true
                });
              },
              child: Text("Submit"),
            ),
            if (flag) // Conditional rendering
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Text(
                      "Happy Birthday, ${name.text}!",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Image.network(
                      'https://static.vecteezy.com/system/resources/previews/004/864/894/original/birthday-balloons-template-background-design-balloon-elements-for-birthday-invitation-card-and-party-celebration-in-yellow-empty-space-for-text-design-illustration-vector.jpg',
                      height: 150,
                      width: 150,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
