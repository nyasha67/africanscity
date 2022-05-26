import 'package:flutter/material.dart';
class Sale extends StatefulWidget {
  const Sale({Key? key}) : super(key: key);

  @override
  _SaleState createState() => _SaleState();
}

class _SaleState extends State<Sale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sale'),
        backgroundColor:Colors.orange,
      ),
    );
  }
}
