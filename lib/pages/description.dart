import 'package:flutter/material.dart';
class Description extends StatefulWidget {
  

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          
            
             Container(
          height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                 gradient: LinearGradient(colors: [Color(0xFFf58056),Color(0xFF2c77c7)],end: Alignment.bottomRight,begin: Alignment.topLeft,)
                ),
            ),
          
          
             Container(
              height: 620,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  color: Colors.white
                ),),
          Positioned(
            top: 142,
            right: 45,
            child: Icon(Icons.notifications,color: Colors.black,size: 40,)),
        ],)
    );
      
    
  }
}