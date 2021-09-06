import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String? m;
  Mybutton({@required this.m});

@override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(7),
        margin: EdgeInsets.all(7),
        
        
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color(0xFFa79feb) ,
        borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Text(m!, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
      ),
      
      
    );
  }
}