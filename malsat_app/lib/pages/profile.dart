import 'package:flutter/material.dart';
import 'package:malsat_app/pages/Settings.dart';
import 'package:malsat_app/pages/loginPage.dart';

class ProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/avatar.png"),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                  Text('Редактировать', style: TextStyle(color: Color(0xFFC6C6C6), fontSize: 14, fontWeight: FontWeight.w600),)
                ])

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Автор объявления', style: TextStyle(color: Color(0xFF9A9A9A), fontSize: 12, fontWeight: FontWeight.w500),),
                    Text('Султан', style: TextStyle(color: Color(0xFF4A564A), fontSize: 18, fontWeight: FontWeight.bold),)
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Ваш кошелек: 0,00 ₸', style: TextStyle(color: Color(0xFF4A564A), fontSize: 11, fontWeight: FontWeight.w500),),
                    Text('Бонусы: 0,00 Бонусы', style: TextStyle(color: Color(0xFF4A564A), fontSize: 11, fontWeight: FontWeight.w500),)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              child: ListTile(
                title: Text('Мои объявления',style: TextStyle(color: Color(0xFF4A564A), fontSize: 14, fontWeight: FontWeight.w500),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                title: Text('Избранные',style: TextStyle(color: Color(0xFF4A564A), fontSize: 14, fontWeight: FontWeight.w500),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
              child: Card(
                  child: ListTile(
                    title: Text('Настройки',style: TextStyle(color: Color(0xFF4A564A), fontSize: 14, fontWeight: FontWeight.w500),),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                  ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: FlatButton(
                onPressed: (){
                  Navigator
                      .of(context)
                      .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) => AuthSwitch()));
                },
                child: Text('Выход',style: TextStyle(color: Color(0xFF6B6B6B), fontSize: 14, fontWeight: FontWeight.w600),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}