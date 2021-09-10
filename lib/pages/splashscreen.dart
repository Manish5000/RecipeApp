import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceui/pages/mainhome.dart';


class LoadingScreen extends StatefulWidget {
  

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState() {
    changeScreen();
    super.initState();
  }

  changeScreen() {
   Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) {
        return Mainhome();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade600,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 260,
          ),
          Image(
            image: AssetImage('assets/logo.png'),
            width: 450,
            height: 130,
          ),
          SizedBox(
            height: 300,
          ),
          
          Container(
            child: Text(
              'A Recipe App',
              style: GoogleFonts.zillaSlab(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16,
              letterSpacing: 10)
            ),
          )
        ],
      ),
    );
  }
}
