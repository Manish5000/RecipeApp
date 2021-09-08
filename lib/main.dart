import 'package:flutter/material.dart';
import 'package:practiceui/pages/description.dart';
import 'package:practiceui/pages/homepage.dart';
import 'package:practiceui/pages/mainhome.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( body:Description()),
    );
  }
}