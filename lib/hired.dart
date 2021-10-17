import 'package:flutter/material.dart';

class HiredPage extends StatefulWidget {
  @override
  _HiredPageState createState() => _HiredPageState();
}

class _HiredPageState extends State<HiredPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 38, 26, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 90, 63, 1),
        title: Text('Aldıklarım'),

      ),

    );
  }
}
