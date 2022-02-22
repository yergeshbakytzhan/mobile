
import 'dart:async';
import 'package:malsat_app/pages/addpost.dart';
import 'package:malsat_app/pages/answers.dart';
import 'package:malsat_app/pages/bookmarks.dart';
import 'package:malsat_app/pages/mainpage.dart';
import 'package:malsat_app/pages/profile.dart';
import 'package:malsat_app/presentation/custom_icons.dart';

import 'dart:convert';
import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigator/custom_navigator.dart';
import 'package:malsat_app/pages/tabpage.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Custom navigator takes a global key if you want to access the
  // navigator from outside it's widget tree subtree
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    // Here's the custom scaffold widget
    // It takes a normal scaffold with mandatory bottom navigation bar
    // and children who are your pages
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                  elevation: 0,
                  showUnselectedLabels: true,
                  selectedFontSize: 0,
                  items: _items,
              ),
            ),

      children: <Widget>[
        MainPage(),
        BookmarksPage(),
        AddPostPage(),
        AnswersPage(),
        ProfilePage(),
      ],
      // Children are the pages that will be shown by every click
      // They should placed in order such as
      // `page 0` will be presented when `item 0` in the [BottomNavigationBar] clicked.

      // Called when one of the [items] is tapped.
      onItemTap: (index) {},
    );
  }

  final _items = [
    BottomNavigationBarItem(icon: Icon(Custom.home, color: Color(0xFFBBBBBB),size: 18.0,),label:'' ),
    BottomNavigationBarItem(icon: Icon(Custom.heart_empty,color: Color(0xFFBBBBBB),size: 18.0,),label:'' ),
    BottomNavigationBarItem(
        icon: Icon(Icons.add_circle_outline,color: Color(0xFFEA5E3C),size: 40.0,), label:'' ),
    BottomNavigationBarItem(
        icon: Icon(Custom.comment,color: Color(0xFFBBBBBB),size: 18.0,),label:'' ),
    BottomNavigationBarItem(
        icon: Icon(Custom.user,color: Color(0xFFBBBBBB),size: 18.0,),label:'' ),
  ];
}