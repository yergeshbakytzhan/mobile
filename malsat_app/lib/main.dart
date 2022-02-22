import 'package:flutter/material.dart';
import 'package:malsat_app/pages/loginPage.dart';
import 'package:malsat_app/pages/mainpage.dart';
import 'package:malsat_app/pages/myhomepage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Malsat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AuthSwitch(),
    );
  }
}