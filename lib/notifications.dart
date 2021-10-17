import 'package:flutter/material.dart';
import 'package:renty_flutter/myBottomNavBar.dart';
import 'package:renty_flutter/mydrawer.dart';


class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 38, 26, 1),
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 90, 63, 1),
        title: Text('Bildirimler'),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
