import 'package:flutter/material.dart';
class  Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title:Text('CONTACTS'),
      ),


      body:Text(
        'number',
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

