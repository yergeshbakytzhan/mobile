
import 'package:flutter/material.dart';
class MainAppBar extends PreferredSize {
  final Widget child;
  final double height;

  MainAppBar({@required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:[
          BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(15,30,15,10),
      height: preferredSize.height,
      alignment: Alignment.center,
      child: child,
    );
  }
}
