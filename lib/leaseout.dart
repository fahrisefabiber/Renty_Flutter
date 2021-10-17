import 'package:flutter/material.dart';

class LeaseoutPage extends StatefulWidget {
  @override
  _LeaseoutPageState createState() => _LeaseoutPageState();
}

class _LeaseoutPageState extends State<LeaseoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 38, 26, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 90, 63, 1),
        title: Text('Sattıklarım'),
      ),
    );
  }
}
