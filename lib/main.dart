import 'package:flutter/material.dart';
import 'package:booking_system/main.dart';
import 'package:booking_system/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'P&E_Services',
      theme:ThemeData(
        primaryColor: Colors.green,
        //backgroundColor: Colors.amber,n u
      ),
debugShowCheckedModeBanner: false,
      home: Loginscrren(),
    );
  }
}
