import 'package:flutter/material.dart';
import 'package:renty_flutter/addproduct.dart';
import 'package:renty_flutter/basket.dart';
import 'package:renty_flutter/notifications.dart';
import 'package:renty_flutter/profile.dart';
import 'package:renty_flutter/search.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 38, 26, 1),
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            iconSize: 25,
            color: Colors.white,
            icon: Icon(Icons.shopping_basket),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => BasketPage()));
            },
          ),
          IconButton(
            iconSize: 25,
            color: Colors.white,
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SearchPage()));
            },
          ),
          IconButton(
            iconSize: 25,
            color: Colors.white,
            icon: Icon(Icons.add_box_rounded),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddProductPage()));
            },
          ),
          IconButton(
            iconSize: 25,
            color: Colors.white,
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => NotificationsPage()));
            },
          ),
          IconButton(
            iconSize: 25,
            color: Colors.white,
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProfilePage()));
            },
          ),
        ],
      ),
    );
  }
}
