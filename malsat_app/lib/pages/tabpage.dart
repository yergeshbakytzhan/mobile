
import 'package:flutter/material.dart';
class NavPage extends StatelessWidget {
  final String title;

  const NavPage(this.title) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    final text = Text(title);

    return Scaffold(
      body: Container(
        child: Center(
            child: FlatButton(
                onPressed: () => _openDetailsPage(context), child: text)),
      ),
      appBar: AppBar(
        title: text,
      ),
    );
  }

  //Use the navigator like you usually do with .of(context) method
  _openDetailsPage(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute());

//  _openDetailsPage(BuildContext context) => mainNavigatorKey.currentState.push(MaterialPageRoute(builder: (context) => DetailsPage(title)));

}