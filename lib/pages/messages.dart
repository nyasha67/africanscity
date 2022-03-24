import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}
class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('MESSAGES'),
      ),
      body:Text(
        'Received',
            style:TextStyle(
          fontSize: 20,
              fontWeight: FontWeight.normal,
      ),
      ),
        floatingActionButton:FloatingActionButton(
          child: Text('press'),
          onPressed: (){},
        ),

          );





  }
}
