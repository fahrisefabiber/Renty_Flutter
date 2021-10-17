import 'package:flutter/material.dart';
import 'package:renty_flutter/myBottomNavBar.dart';
import 'package:renty_flutter/mydrawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 38, 26, 1),
      drawer: MyDrawer(),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 38, 26, 1),
          title: Center(
            child: IconButton(
              iconSize: 90,
              icon: Image.asset('assets/images/logo.png'),
              onPressed: () {},
            ),
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: [Tab(text: "BANA ÖZEL"), Tab(text: "KATEGORİLER")],
          )),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: AspectRatio(
                          aspectRatio: 200 / 100,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26.0),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                'Banner',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.black),
                              ),
                            ),
                          ))),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 144 / 220,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: Color.fromRGBO(112, 182, 44, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 144 / 220,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: Color.fromRGBO(4, 140, 99, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 144 / 220,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: Color.fromRGBO(201, 213, 51, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 144 / 220,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: Color.fromRGBO(112, 182, 44, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
          ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 100 / 90,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: Color.fromRGBO(112, 182, 44, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: AspectRatio(
                    aspectRatio: 100 / 90,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        color: Color.fromRGBO(4, 140, 99, 1),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 100 / 90,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: Color.fromRGBO(201, 213, 51, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: AspectRatio(
                    aspectRatio: 100 / 90,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        color: Color.fromRGBO(112, 182, 44, 1),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 100 / 90,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: Color.fromRGBO(4, 140, 99, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: AspectRatio(
                    aspectRatio: 100 / 90,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        color: Color.fromRGBO(201, 213, 51, 1),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 100 / 90,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: Color.fromRGBO(112, 182, 44, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: AspectRatio(
                    aspectRatio: 100 / 90,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        color: Color.fromRGBO(4, 140, 99, 1),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 200/86,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: Color.fromRGBO(201, 213, 51, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
