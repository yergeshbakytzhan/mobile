import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:malsat_app/pages/http_request.dart';
import 'package:malsat_app/pages/post_details.dart';
import 'package:intl/intl.dart';
import 'package:malsat_app/presentation/custamappbar.dart';
import 'package:malsat_app/presentation/custom_icons.dart';


class CategoriesPage extends StatelessWidget{
  HttpService httpService = HttpService();
  int id;
  // In the constructor, require a Todo.
  CategoriesPage({Key key, @required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
        backgroundColor: Color(0xFFFCFCFC),
      appBar: MainAppBar(
        height: 200,
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child:Row(
                children: <Widget>[
                  Icon(Icons.menu,color: Color(0xFFEA5E3C)),
                  Expanded(child: Image.asset('assets/images/MALSAT.png', width: 84, height: 14,))
                ],
              ), ),

            Container(
              decoration:BoxDecoration(
                color: Color(0xFFFFFFFF),
                shape: BoxShape.rectangle,
              ),
              child:
              Row(
                children: <Widget>[
                  new Flexible(
                    child:
                    TextField(
                      style: new TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontStyle: FontStyle.normal,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Color.fromRGBO(74, 86, 74, 0.4),),
                        hintText: "Поиск объявлений",
                        hintStyle: TextStyle(color: Color.fromRGBO(74, 86, 74, 0.4),fontSize: 14.0),
                        fillColor: Color(0xFFF2F1F1),
                        filled: true,
                        focusColor: Color(0xFF000000),
                        focusedBorder: InputBorder.none,
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),

                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),),
            SizedBox(
              height: 10,
            ),
            Row(children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(242, 241, 241, 1),
                  onPrimary: Color.fromRGBO(74, 86, 74, 0.4),
                ),
                child: Text('Фильтры'),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(242, 241, 241, 1),
                  onPrimary: Color.fromRGBO(74, 86, 74, 0.4),
                ),
                child: Text('Все объявлений'),
              )
            ],)

          ],
        ),
      ),
      body: SingleChildScrollView(child:Container(
        padding: EdgeInsets.all(20),
    height: size.height ,
    child:FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context,  snapshot){
          if(snapshot.hasData){
            List<dynamic> posts = snapshot.data;
            return  GridView.count(
              crossAxisCount: 2,
              childAspectRatio: (itemWidth / itemHeight),
              controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children:
              posts
                  .map(( post) => GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPost(post: post),
                      ),
                    );
                  },
                  child: Container(
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
                      child: Column(
                      children: <Widget>[
                        Expanded(
                            child:
                            Column(
                              children: <Widget>[
                                Expanded(child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),)
                                    ,
                                    child: Image.asset('assets/images/card.png', fit: BoxFit.cover, )
                                ) ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                    child:
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children:<Widget>[
                                                  Text(post['title'], style: TextStyle(color: Color(0xFFEA5E3C),fontSize: 16,fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
                                                  Icon(Custom.heart_empty, size: 20, color: Color.fromRGBO(74, 86, 74, 0.4),),]
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:<Widget>[
                                                Text(((DateFormat("yy-M-dd").parse(post['date'])).toString()).split(' ')[0],textAlign: TextAlign.left,style: TextStyle(color: Color(0xFFB5B5B5),fontSize: 12)),
                                                Text(post['price']+' тг',textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF6C6C6C),fontSize: 18,fontWeight: FontWeight.bold),)
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
                  )))
              )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());

          }
        },
      ),
    )));
  }
}
