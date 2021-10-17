import 'package:flutter/material.dart';
import 'package:renty_flutter/myBottomNavBar.dart';
import 'package:renty_flutter/mydrawer.dart';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 38, 26, 1),
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 90, 63, 1),
        title: Text('Arama'),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
