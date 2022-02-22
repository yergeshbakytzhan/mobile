import 'package:flutter/material.dart';
import 'package:malsat_app/pages/http_request.dart';
import 'package:malsat_app/pages/models.dart';
import 'package:malsat_app/presentation/custom_icons.dart';

class DetailPost extends StatelessWidget {
  // Declare a field that holds the Todo.
  final HttpService httpService = HttpService();
  Posts post;
  // In the constructor, require a Todo.
  DetailPost({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Image.asset("assets/images/MALSAT.png", height: 14, width: 84),
              elevation: 0,
              centerTitle: true,
              backgroundColor: Color(0xFFFFFFFF),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Color(0xFFF7836D),), onPressed: (){
            Navigator.pop(context);
          }
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.network(
                  "assets/images/card_big.png", fit: BoxFit.fitWidth),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 30),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween,
                          children: <Widget>[
                            Text(post.title),
                            Icon(Custom.heart_empty)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Бұқалар сатылады')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Center(child: Text('200 000 ₸')),
                        ),
                        Row(
                          children: [
                            Text(
                                'Жамбылский район | Добавлено: 13 марта 2021')
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text('Обмен'),
                                  Text('Да')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text('Обмен'),
                                  Text('Да')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text('Обмен'),
                                  Text('Да')
                                ],
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}