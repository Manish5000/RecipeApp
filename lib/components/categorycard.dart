import 'package:flutter/material.dart';
class Mycard extends StatefulWidget {
  final Color? c;
  final String? image;
  final String? title;
  
  
  
  Mycard({@required this.c,@required this.title,@required this.image});
  @override
  _MycardState createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(left: 10,right: 10),
      child: Card(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(backgroundImage: AssetImage(widget.image!),radius: 40,
            ),
            SizedBox(height: 7,),
            Text(widget.title!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff818090)),),
          ],
        ),
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30),),
        
        color: widget.c!,
        elevation: 4.0,
        
      ),
    );
  }
}