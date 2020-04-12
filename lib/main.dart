import 'package:covid19/AboutMe/datsource.dart';
import 'package:flutter/material.dart';

import 'dashboard/homepage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
        primaryColor:primaryBlack,
        accentColor: Color(0xFFFEF9EB),
      ),
      home: HomePage(),
    );
  }
}
