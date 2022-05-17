import 'package:africanscity/widget/categories.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Categories(),

        ],
      ),
    );
  }
}
