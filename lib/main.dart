import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/user_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserView(),
    );
  }
}


//
// import 'package:demo/view/user_view.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       home: UserView()
//     ),
//   );
// }