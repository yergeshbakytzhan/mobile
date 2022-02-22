import 'package:flutter/material.dart';


class AddPostPage extends StatelessWidget{
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
    );
  }
}