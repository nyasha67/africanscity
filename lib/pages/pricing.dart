import 'package:flutter/material.dart';

class Pricing extends StatefulWidget {
  const Pricing({Key? key}) : super(key: key);

  @override
  _PricingState createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pricing'),
        backgroundColor:Colors.orange,
      ),
    );
  }
}
