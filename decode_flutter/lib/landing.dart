import 'package:flutter/material.dart';
import 'http_service.dart';
import 'courses.dart';
import 'faq.dart';
import 'activity.dart';
import 'rating.dart';

class LandingPage extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<LandingPage> {
  final HttpService httpService = HttpService();
  var isDataLoading = false;
  var isDataLoading2 = false;
  var isDataLoading3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue[600], size: 16),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(15.0),
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                  color: Color(0xFFBCD3FF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'НАУЧИСЬ',
                      style: TextStyle(
                          color: Color(0xFF495867),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'ПРОГРАММИРОВАТЬ',
                      style: TextStyle(
                          color: Color(0xFFFE5F55),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'ЛЕГКО',
                      style: TextStyle(
                          color: Color(0xFF495867),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Text(
                          'Получай доступ ко многим языкам программирования и начни изучать их уже сейчас',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 14,
                              height: 1,
                              fontWeight: FontWeight.w500),
                        )),
                    Container(
                        color: Color(0xFFFE5F55),
                        width: double.infinity,
                        child: OutlineButton(
                          onPressed: () {},
                          borderSide: BorderSide(color: Color(0xFFFE5F55)),
                          child: Text(
                            "Начать обучение",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ))
                  ],
                )),
            Container(
                padding: const EdgeInsets.all(15.0),
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          'ЧТО ВАС ЖДЁТ НА КУРСЕ',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image(image: AssetImage('assets/mac.png'))),
                    Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'Онлайн обучение',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Выбери нужное направление, читай лекции и выполняй задания.',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 14,
                              height: 1,
                              fontWeight: FontWeight.w400),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image(image: AssetImage('assets/mac.png'))),
                    Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'Только практика',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Выбери нужное направление, читай лекции и выполняй задания.',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 14,
                              height: 1,
                              fontWeight: FontWeight.w400),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image(image: AssetImage('assets/mac.png'))),
                    Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'Советы от наставника',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Выбери нужное направление, читай лекции и выполняй задания.',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 14,
                              height: 1,
                              fontWeight: FontWeight.w400),
                        )),
                  ],
                )),
            Container(
                padding: const EdgeInsets.all(15.0),
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                  color: Color(0xFFFFEAF7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'НАШИ ПРЕИМУЩЕСТВА',
                      style: TextStyle(
                          color: Color(0xFF495867),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'В любое время',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 14, left: 20, bottom: 14),
                        child: Text(
                          'Все материалы уже доступны, и вы можете изучать в любое удобное вам время',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 13,
                              height: 1.4,
                              fontWeight: FontWeight.w400),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'Домашнее задание и практика',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 14, left: 20, bottom: 14),
                        child: Text(
                          'Все материалы уже доступны, и вы можете изучать в любое удобное вам время',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 13,
                              height: 1.4,
                              fontWeight: FontWeight.w400),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'Онлайн форум',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 14, left: 20, bottom: 14),
                        child: Text(
                          'В онлайн форуме вы можете поделиться со своими решениями или обсудить задачи и вопросы',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 13,
                              height: 1.4,
                              fontWeight: FontWeight.w400),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          '2000 пользователей',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              height: 1,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 14, left: 20, bottom: 14),
                        child: Text(
                          'Более 2000 пользователей закончили наши курсы',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 13,
                              height: 1.4,
                              fontWeight: FontWeight.w400),
                        )),
                  ],
                )),
            Container(
                padding: const EdgeInsets.all(15.0),
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'ЧАСТО ЗАДАВАЕМЫЕ ВОПРОСЫ',
                      style: TextStyle(
                          color: Color(0xFF495867),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                        margin: const EdgeInsets.all(10),
                        width: double.infinity,
                        child: OutlineButton(
                            onPressed: () {
                              setState(() {
                                if (isDataLoading == false) {
                                  isDataLoading = true;
                                } else {
                                  isDataLoading = false;
                                }
                              });
                            },
                            borderSide:
                                BorderSide(width: 3, color: Color(0xFF495867)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 10),
                              child: Text(
                                "Как записаться на курс?",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ))),
                    isDataLoading
                        ? Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 20),
                            child: Text(
                              "- После оплаты у вас будет доступ ко всем курсам, задачам и лекциям.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          )
                        : Text(
                            " ",
                            style: TextStyle(color: Colors.white, fontSize: 1),
                          ),
                    Container(
                        margin: const EdgeInsets.all(10),
                        width: double.infinity,
                        child: OutlineButton(
                            onPressed: () {
                              setState(() {
                                if (isDataLoading2 == false) {
                                  isDataLoading2 = true;
                                } else {
                                  isDataLoading2 = false;
                                }
                              });
                            },
                            borderSide:
                                BorderSide(width: 3, color: Color(0xFF495867)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 10),
                              child: Text(
                                "Нужно ли знать математику в совершенстве, чтобы попасть на курс?",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ))),
                    isDataLoading2
                        ? Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 20),
                            child: Text(
                              "- Чтобы эффективно учиться на курсе, будет достаточно школьных знаний.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          )
                        : Text(
                            " ",
                            style: TextStyle(color: Colors.white, fontSize: 1),
                          ),
                    Container(
                        margin: const EdgeInsets.all(10),
                        width: double.infinity,
                        child: OutlineButton(
                            onPressed: () {
                              setState(() {
                                if (isDataLoading3 == false) {
                                  isDataLoading3 = true;
                                } else {
                                  isDataLoading3 = false;
                                }
                              });
                            },
                            borderSide:
                                BorderSide(width: 3, color: Color(0xFF495867)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 10),
                              child: Text(
                                "У меня нет опыта в программировании, будет ли сложно учиться?",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ))),
                    isDataLoading3
                        ? Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 20),
                            child: Text(
                              "- На курсе успешно учатся даже новички без знаний и опыта в программировании.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          )
                        : Text(
                            " ",
                            style: TextStyle(color: Colors.white, fontSize: 1),
                          ),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(
                    top: 15.0, bottom: 50, left: 30, right: 30),
                decoration: new BoxDecoration(
                  color: Color(0xFFBCD3FF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Text(
                          'Получай доступ ко многим языкам программирования и начни изучать их уже сейчас',
                          style: TextStyle(
                              color: Color(0xFF495867),
                              fontSize: 14,
                              height: 1,
                              fontWeight: FontWeight.w500),
                        )),
                    Container(
                        color: Color(0xFFFE5F55),
                        width: double.infinity,
                        child: OutlineButton(
                          onPressed: () {},
                          borderSide: BorderSide(color: Color(0xFFFE5F55)),
                          child: Text(
                            "Начать обучение",
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
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/whitelogo.png')))),
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
