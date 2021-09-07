import 'package:flutter/material.dart';
import 'menu/homepage.dart';
import 'mainhome.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( body:Homepage()),
    );
  }
}