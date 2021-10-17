import 'package:flutter/material.dart';
import 'package:renty_flutter/register.dart';
import 'package:renty_flutter/auth.dart';
import 'package:renty_flutter/home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromRGBO(0, 38, 26, 1),Color.fromRGBO(4, 140, 99, 1)]

        )
      ),
      child: Scaffold(
        backgroundColor:  Colors.transparent,
        body: ListView(children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: IconButton(
                      iconSize: MediaQuery.of(context).size.height * 0.35,
                      icon: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50.0)),
                      color: Color.fromRGBO(4, 140, 99, 1),
                    ),
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.70,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                RegisterPage()));
                                  },
                                  child: Text('Kayıt Ol',
                                      style: TextStyle(
                                          color: Color.fromRGBO(209, 209, 209, 1),
                                          fontSize: 20))),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Giriş Yap',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)))
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            controller: _emailController,
                            obscureText: false,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                hintText: 'E-Mail Adresi',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0))),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            controller: _passwordController,
                            obscureText: true,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                hintText: 'Şifre',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0))),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 200,
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,
                              child: MaterialButton(
                                minWidth: MediaQuery.of(context).size.width,
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                onPressed: () {
                                  _authService
                                      .signIn(
                                      _emailController.text, _passwordController.text)
                                      .then((value) {
                                    return Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomeScreen()));
                                  });
                                },
                                child: Text('GİRİŞ YAP',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(83, 105, 196, 1))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 200,
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,
                              child: MaterialButton(
                                minWidth: MediaQuery.of(context).size.width,
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                onPressed: () {
                                  _authService.resetPass(_emailController.text);
                                },
                                child: Text('ŞİFREMİ UNUTTUM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(185, 196, 255, 1))),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
