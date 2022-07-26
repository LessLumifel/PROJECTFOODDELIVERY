import 'dart:ui';

import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Colors.blue.shade700;
  Color primaryColor = Colors.lightBlue.shade100;
  Color TextColer = Colors.pink;
  Color blackColor = Colors.black;

  SizedBox mySizebox() => SizedBox(
        width: 8,
        height: 11,
      );

  Widget titleCenter(BuildContext context,String string) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Text(
          string,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Text showTitle(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.blue.shade700,
          fontWeight: FontWeight.bold,
        ),
      );

  Text showTitleH2(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.blue.shade700,
          fontWeight: FontWeight.bold,
        ),
      );

  BoxDecoration myBoxDecoration(String namePic) {
    return BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/$namePic'), fit: BoxFit.cover),
    );
  }

  Container showlogo() {
    return Container(
      width: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  MyStyle();
}
