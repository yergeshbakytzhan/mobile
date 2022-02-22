import 'http_service.dart';
import 'package:flutter/material.dart';
import 'landing.dart';
import 'activity.dart';
import 'rating.dart';
import 'faq.dart';
import 'courses.dart';
import 'lessonPage.dart';

class CourseDetailPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Веб-разработка",
          style: TextStyle(
              color: Color(0xFF495867),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue[600], size: 16),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration:
                  new BoxDecoration(color: Color(0xFFffffff), boxShadow: [
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
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              'Длительность:',
                              style: TextStyle(
                                  color: Color(0xFF495867),
                                  fontSize: 16,
                                  height: 1,
                                  fontWeight: FontWeight.w400),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              '40 лекций',
                              style: TextStyle(
                                  color: Color(0xFF444054),
                                  fontSize: 17,
                                  height: 1,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 15, bottom: 15, left: 5),
                        child: Text(
                          'Вы будете изучать:',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w400),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          'HTML, CSS, Javascript, Адаптивная верстка, AJAX и так далее...',
                          style: TextStyle(
                              color: Color(0xFF444054),
                              fontSize: 17,
                              height: 1.3,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 10, bottom: 10, left: 5),
                        child: Text(
                          'Опыт:',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w400),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          'Для начинающих',
                          style: TextStyle(
                              color: Color(0xFF444054),
                              fontSize: 17,
                              height: 1.3,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 10, bottom: 10, left: 5),
                        child: Text(
                          'Для тех кто хочет:',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w400),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          ' - Начинать программировать',
                          style: TextStyle(
                              color: Color(0xFF444054),
                              fontSize: 17,
                              height: 1.3,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          ' - Создавать свой сайт',
                          style: TextStyle(
                              color: Color(0xFF444054),
                              fontSize: 17,
                              height: 1.3,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          ' - Научиться базовые знания верстки',
                          style: TextStyle(
                              color: Color(0xFF444054),
                              fontSize: 17,
                              height: 1.3,
                              fontWeight: FontWeight.w600),
                        )),
                  ]),
            ),
            Container(
                padding: const EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                  color: Color(0xFF495867),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                        'Курс “Веб-разработка”',
                        style: TextStyle(
                            color: Color(0xFFffffff),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      'Научись создавать современные веб-сайты',
                      style: TextStyle(
                          color: Color(0xFFffffff),
                          fontSize: 26,
                          fontWeight: FontWeight.w900),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Text(
                          'Процесс создания веб-сайта или веб-приложения. Основными этапами процесса являются веб-дизайн, вёрстка страниц, программирование на стороне клиента и сервера, а также конфигурирование веб-сервера.',
                          style: TextStyle(
                              color: Color(0xFFffffff),
                              fontSize: 14,
                              height: 1.3,
                              fontWeight: FontWeight.w500),
                        )),
                    Container(
                        color: Color(0xFFFE5F55),
                        width: double.infinity,
                        child: OutlineButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LessonPage()),
                            );
                          },
                          borderSide: BorderSide(color: Color(0xFFFE5F55)),
                          child: Text(
                            "Перейти",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ))
                  ],
                )),
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
