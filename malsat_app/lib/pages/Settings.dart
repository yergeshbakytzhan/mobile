import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget{
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children:<Widget> [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Настройки',style: TextStyle(color: Color(0xFF4A564A), fontSize: 19, fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              child: ListTile(
                title: Text('Контактные данные',style: TextStyle(color: Color(0xFF4A564A), fontSize: 14, fontWeight: FontWeight.w500),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                title: Text('Изменить пароль',style: TextStyle(color: Color(0xFF4A564A), fontSize: 14, fontWeight: FontWeight.w500),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                title: Text('Изменить e-mail адрес',style: TextStyle(color: Color(0xFF4A564A), fontSize: 14, fontWeight: FontWeight.w500),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                title: Text('Удалить аккаунт',style: TextStyle(color: Color(0xFF4A564A), fontSize: 14, fontWeight: FontWeight.w500),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
              ),
            ),

          ],
        ),
      ),
    );
  }
}