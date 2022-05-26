import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeText extends StatefulWidget {
  @override
  _WelcomeTextState createState() => _WelcomeTextState();
}

class _WelcomeTextState extends State<WelcomeText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Latest Properties',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            'Creating a listing and showcase your property with us',
            style:TextStyle(
               fontSize: 18, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
