import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malsat_app/presentation/custom_icons.dart';


class BookmarksPage extends StatefulWidget{
  @override
  BookmarksPageState createState() => BookmarksPageState();
}

class BookmarksPageState extends State<BookmarksPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      appBar: new AppBar(
        title: Image.asset("assets/images/MALSAT.png", height: 14, width: 84),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
            icon: Icon(Icons.menu, color: Color(0xFFF7836D),), onPressed: (){
          print("clicked");
        }
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Text('Избранное', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4A564A)),),
            ],),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)
                        ),
                      ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child:Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),)
                                    ,
                                    child: Image.asset('assets/images/card.png', fit: BoxFit.cover, )
                                ) ),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:<Widget>[
                                            Text('Продам быка', style: TextStyle(color: Color(0xFFEA5E3C),fontSize: 16,fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
                                            SizedBox(width: 30,),
                                            Icon(Custom.heart_empty, size: 20, color: Color.fromRGBO(74, 86, 74, 0.4),),]
                                      ),
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:<Widget>[
                                            Text('23.03.2021',textAlign: TextAlign.left,style: TextStyle(color: Color(0xFFB5B5B5),fontSize: 12)),
                                            Text('200 000 тг',textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF6C6C6C),fontSize: 18,fontWeight: FontWeight.bold),)
                                          ]
                                      )
                                    ],
                                  ),
                                )

                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}