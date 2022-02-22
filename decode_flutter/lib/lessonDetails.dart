import 'http_service.dart';
import 'models.dart';
import 'package:flutter/material.dart';

class LessonDetailsPage extends StatelessWidget {
  final HttpService httpService = HttpService();
  int id;
  LessonDetailsPage({Key key, @required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "УРОК",
          style: TextStyle(
              color: Color(0xFF495867),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue[600], size: 16),
      ),
      body: FutureBuilder(
        future: httpService.getLesson(id),
        builder: (BuildContext context, AsyncSnapshot<Lesson> snapshot) {
          if (snapshot.hasData) {
            Lesson items = snapshot.data;
            return SingleChildScrollView(
                child: Container(
              decoration:
                  new BoxDecoration(color: Color(0xFFffffff), boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ]),
              margin: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 5, top: 15),
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10, top: 15, bottom: 20),
                    child: Text(
                      items.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      items.shortContent,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      "Авторизуйтесь, чтобы открыть данный урок",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
