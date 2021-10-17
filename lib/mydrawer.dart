import 'package:flutter/material.dart';
import 'package:renty_flutter/about.dart';
import 'package:renty_flutter/auth.dart';
import 'package:renty_flutter/contact.dart';
import 'package:renty_flutter/favorites.dart';
import 'package:renty_flutter/hired.dart';
import 'package:renty_flutter/home_screen.dart';
import 'package:renty_flutter/leaseout.dart';
import 'package:renty_flutter/login.dart';
import 'package:renty_flutter/messages.dart';
import 'package:renty_flutter/myproducts.dart';
import 'package:renty_flutter/settings.dart';




class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(0, 90, 63, 1), //desired color
        ),
        child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color.fromRGBO(0, 90, 63, 1)),
                  accountName: Text(
                    'İsim Soyisim',
                    style: TextStyle(fontSize: 20),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text('Ana Sayfa',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HomeScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  title: Text('Mesajlar',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MessagesPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.store,
                    color: Colors.white,
                  ),
                  title: Text('Ürünlerim',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyProductsPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_grocery_store_sharp,
                    color: Colors.white,
                  ),
                  title: Text('Aldıklarım',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HiredPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.assistant_direction,
                    color: Colors.white,
                  ),
                  title: Text('Sattıklarım',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LeaseoutPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  title: Text('Favorilerim',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => FavoritesPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text('Ayarlar',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SettingsPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.white,
                  ),
                  title: Text('İletişim',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ContactPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text('Hakkında',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AboutPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.feedback,
                    color: Colors.white,
                  ),
                  title: Text('Geri Bildirim',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text('Çıkış',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    _authService.signOut();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage()));
                  },
                ),
              ],
            )));
  }
}
