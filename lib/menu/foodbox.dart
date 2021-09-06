import 'package:flutter/material.dart';
class Foodbox extends StatefulWidget {
final String? imgpath;
final String? name;
final Color? c;

Foodbox({@required this.name,@required this.imgpath,@required this.c});
  @override
  _FoodboxState createState() => _FoodboxState();
}

class _FoodboxState extends State<Foodbox> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(17)),
      child:Row(
        children: <Widget>[
        Container( margin: EdgeInsets.all(10),height: 70,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(fit: BoxFit.cover,image: AssetImage(widget.imgpath!),)),),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text(widget.name!,
          style: TextStyle(color: Color(0xff818090),
          fontSize: 15,
          fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Row(
            
            children: <Widget>[
          GestureDetector(
            onTap: (){
              setState(() {
                
              });
            },
            child: Icon(Icons.notifications,color: Color(0xFFa79feb),)),
          GestureDetector(
            onTap: (){},
            child:  Icon(Icons.star_rounded,color: Color(0xFFa79feb)),)
          ],
          ),
        ],
        ),
        ],
      ) ,
    );
  }
}