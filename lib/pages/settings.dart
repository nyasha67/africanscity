import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SETTINGS'),
      ),
      body:Text(
        'reset',
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

