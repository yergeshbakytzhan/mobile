import 'http_service.dart';
import 'package:flutter/material.dart';
import 'landing.dart';
import 'activity.dart';
import 'rating.dart';
import 'faq.dart';
import 'courseDetails.dart';

class CoursePage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "КУРСЫ",
          style: TextStyle(
              color: Color(0xFF495867),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue[600], size: 16),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        margin: EdgeInsets.all(15),
        height: 540,
        decoration: new BoxDecoration(color: Color(0xFFEFF8FF), boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Веб-разработка',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Text(
                  'Процесс создания веб-сайта или веб-приложения. Основными этапами процесса являются веб-дизайн, вёрстка страниц, программирование на стороне клиента и сервера, а также конфигурирование веб-сервера.',
                  style: TextStyle(
                      color: Color(0xFF495867),
                      fontSize: 14,
                      height: 1.4,
                      fontWeight: FontWeight.w500),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  'Уровень:',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16,
                      height: 1,
                      fontWeight: FontWeight.w600),
                )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Начальный',
                  style: TextStyle(
                      color: Color(0xFF495867),
                      fontSize: 16,
                      height: 1,
                      fontWeight: FontWeight.w400),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  'Языки:',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16,
                      height: 1,
                      fontWeight: FontWeight.w600),
                )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'HTML, CSS, Javascript',
                  style: TextStyle(
                      color: Color(0xFF495867),
                      fontSize: 16,
                      height: 1,
                      fontWeight: FontWeight.w400),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  'Длительность:',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16,
                      height: 1,
                      fontWeight: FontWeight.w600),
                )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  '40 лекции',
                  style: TextStyle(
                      color: Color(0xFF495867),
                      fontSize: 16,
                      height: 1,
                      fontWeight: FontWeight.w400),
                )),
            Container(
                color: Color(0xFFEFF8FF),
                width: double.infinity,
                child: OutlineButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CourseDetailPage()),
                    );
                  },
                  borderSide: BorderSide(color: Color(0xFFFE5F55)),
                  child: Text(
                    "Подробнее",
                    style: TextStyle(color: Color(0xFFFE5F55), fontSize: 17),
                  ),
                ))
          ],
        ),
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
