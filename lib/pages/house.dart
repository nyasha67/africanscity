import 'package:flutter/material.dart';
class House extends StatefulWidget {
  const House({Key? key}) : super(key: key);

  @override
  _HouseState createState() => _HouseState();
}

class _HouseState extends State<House> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('House'),
        backgroundColor:Colors.orange,
      ),
    );
  }
}
