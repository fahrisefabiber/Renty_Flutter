import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 38, 26, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 90, 63, 1),
        title: Text('Hakkımızda'),

      ),

    );
  }
}
