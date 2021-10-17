import 'package:flutter/material.dart';
import 'package:renty_flutter/myBottomNavBar.dart';
import 'package:renty_flutter/mydrawer.dart';


class BasketPage extends StatefulWidget {
  @override
  _BasketPageState createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 38, 26, 1),
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 90, 63, 1),
        title: Text('Sepetim'),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
