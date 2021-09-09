import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Smallbutton extends StatefulWidget {
final String? name;
final Color? color1;
final Color? color2;
Smallbutton({@required this.name, @required this.color1,@required this.color2});
  @override
  _SmallbuttonState createState() => _SmallbuttonState();
}

class _SmallbuttonState extends State<Smallbutton> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: widget.color2! ,
      decoration: BoxDecoration(color: widget.color1,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(width: 1,color: widget.color1! )
      
      ),
      
      child: InkWell(child: Text(widget.name!,style: GoogleFonts.roboto(fontSize:20,color: widget.color1!),),)
    );
  }
}