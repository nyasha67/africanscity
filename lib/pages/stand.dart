import 'package:flutter/material.dart';
class Stand extends StatefulWidget {
  const Stand({Key? key}) : super(key: key);

  @override
  _StandState createState() => _StandState();
}

class _StandState extends State<Stand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stand'),
        backgroundColor:Colors.orange,
      ),
    );
  }
}
