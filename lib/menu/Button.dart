import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
 final int? index;
final String? t;
final int? currentindex;
final PageController? pageController;
  Mybutton({@required this.t,@required this.index,@required this.currentindex,@required this.pageController});
  @override
  _MybuttonState createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
//    Color? c=Color(0xffa79feb);
// Color? d=Color(0xFF6c60e0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () {
       widget.pageController!.jumpToPage(widget.index!);
         
       },
     child: Container(
       alignment: Alignment.center,
       decoration: BoxDecoration(
         color: widget.index==widget.currentindex? Color(0xFF6c60e0):Color(0xffa79feb),
         borderRadius: BorderRadius.all(Radius.circular(30))),
       margin: EdgeInsets.all(5),
       padding: EdgeInsets.all(7),
       child: Text(widget.t!,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),)
    );
  }
}