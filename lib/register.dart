import 'package:flutter/material.dart';
import 'package:renty_flutter/login.dart';
import 'package:renty_flutter/auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();
  bool _validate0 = false;
  bool _validate1 = false;
  bool _validate2 = false;

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
        body: ListView(
          children:[ Column(
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50.0)),
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
                                  onPressed: () {},
                                  child: Text('Kayıt Ol',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20))),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LoginPage()));
                                  },
                                  child: Text('Giriş Yap',
                                      style: TextStyle(
                                          color: Color.fromRGBO(209, 209, 209, 1),
                                          fontSize: 20)))
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            controller: _nameController,
                            obscureText: false,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                errorText: _validate0 ? 'İsminizi Giriniz!' : null,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                hintText: 'İsim Soyisim',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0))),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: _emailController,
                            obscureText: false,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                errorText: _validate1 ? 'E-mail adresinizi giriniz!' : null,
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
                                errorText: _validate2 ? 'En az 6 karakterli bir şifre belirleyiniz!' : null,
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
                                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                onPressed: () {
                                  setState(() {
                                    _nameController.text.isEmpty ? _validate0 = true : _validate0 = false;
                                  });
                                  setState(() {
                                    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(_emailController.text) ? _validate1 = false : _validate1 = true;
                                  });
                                  setState(() {
                                    _passwordController.text.length <6 ? _validate2 = true : _validate2 = false;
                                  });
                                  _authService
                                      .createPerson(
                                      _nameController.text,
                                      _emailController.text,
                                      _passwordController.text)
                                      .then((value) {
                                    return Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  });
                                },
                                child: Text('KAYIT OL',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(83, 105, 196, 1))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ), ]
        ),
      ),
    );
  }
}
