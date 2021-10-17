import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 38, 26, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 90, 63, 1),
        centerTitle: true,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.contact_mail),
              SizedBox(width: 10),
              Text('İletişim'),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30.0, top: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.phone_in_talk_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text('Telefon', style: TextStyle(color: Colors.white,fontSize: 17),),
                  ],
                ),
                SizedBox(width: 5),
                Row(
                  children: [
                    Text(
                      '0546 236 68 07',
                      style: TextStyle(color: Colors.white,fontSize: 17),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, top: 20.0),
            child: Column(
              children: [
                Row(

                  children: [
                    Icon(
                      Icons.web,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Web Sitesi',
                      style: TextStyle(color: Colors.white,fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(width: 5),
                Row(
                  children: [
                    Text(
                      'www.rentyapp.co',
                      style: TextStyle(color: Colors.white,fontSize: 17),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, top: 20.0),
            child: Column(
              children: [
                Row(

                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'E-Posta',
                      style: TextStyle(color: Colors.white,fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(width: 5),
                Row(
                  children: [
                    Text(
                      'contact@rentyapp.co',
                      style: TextStyle(color: Colors.white,fontSize: 17),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, top: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.phone_android_sharp,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'SosyalMedya',
                      style: TextStyle(color: Colors.white,fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(width: 5),
                Row(
                  children: [
                    Text(
                      'www.instagram.com/rentyapp.co',
                      style: TextStyle(color: Colors.white,fontSize: 17),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
