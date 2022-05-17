import 'package:flutter/material.dart';
class Plots extends StatefulWidget {
  const Plots({Key? key}) : super(key: key);

  @override
  _PlotsState createState() => _PlotsState();
}

class _PlotsState extends State<Plots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plots'),
        backgroundColor:Colors.orange,
      ),
    );
  }
}
