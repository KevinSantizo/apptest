import 'package:flutter/material.dart';
import 'package:testapp/src/pages/home.dart';
import 'package:testapp/src/pages/login.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Login(),
      routes: {
        'home': (BuildContext context) => Home()
      },
    );
  }
}