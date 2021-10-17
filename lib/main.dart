
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:renty_flutter/register.dart';
import 'home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'login.dart';

void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();



  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         home: HomeScreen(),
       );
     }
   }


