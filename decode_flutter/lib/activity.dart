import 'http_service.dart';
import 'models.dart';
import 'package:flutter/material.dart';
import 'landing.dart';
import 'courses.dart';
import 'rating.dart';
import 'faq.dart';

class ActivityPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "АКТИВНОСТИ",
          style: TextStyle(
              color: Color(0xFF495867),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue[600], size: 16),
      ),
      body: FutureBuilder(
        future: httpService.getActivity(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Activities>> snapshot) {
          if (snapshot.hasData) {
            List<Activities> items = snapshot.data;
            return ListView(
              children: items
                  .map((Activities activity) => Container(
                        decoration: new BoxDecoration(
                            color: Color(0xFFffffff),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ]),
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 5, top: 15),
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 70.0,
                              width: 60.0,
                              child: Image.network(
                                "http://37.18.30.124:5001/${activity.user.avatar}",
                                errorBuilder: (BuildContext context,
                                    Object exception, StackTrace stackTrace) {
                                  return Image.network(
                                      "https:${activity.user.avatar}");
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                activity.user.name +
                                    ' прочитал лекцию ' +
                                    activity.info,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      drawer: Container(
        color: Color(0xFF495867),
        width: 100,
        child: new ListView(
          children: <Widget>[
            Container(
              height: 110.0,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xFFFE5F55)),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/whitelogo.png')))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoursePage()),
                );
              },
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: Image.asset('assets/list.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Курсы',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RatingPage()),
                );
              },
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: Image.asset('assets/rating.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Рейтинг',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityPage()),
                );
              },
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: Image.asset('assets/news.png'),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Активность',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FAQPage()),
                );
              },
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: Image.asset('assets/conversation.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'FAQ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
