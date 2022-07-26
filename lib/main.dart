import 'package:flutter/material.dart';
import 'package:fooddelivery/sceen/home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      title: 'Project Food Delivery',
      home: Home(),
    );
  }
}
