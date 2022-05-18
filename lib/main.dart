import 'package:flutter/material.dart';
import 'package:real_estate/pages/login.dart';
import 'pages/root.dart';
import 'theme/color.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Africnscity',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: Login(),
    );
  }

}