import 'package:flutter/material.dart';
import 'categorycard.dart';
class Mainhome extends StatefulWidget {

  @override
  _MainhomeState createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Column(
      children: <Widget>[
     Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xFF6c60e0),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 35),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.bubble_chart_rounded,color: Colors.white,size: 40,),
            SizedBox(width: 8,),
            Text('Cooking',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 26),),
            SizedBox(width: 8,),
            Icon(Icons.notifications,color: Colors.white,),
          ],
          ),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.all(20),
            child:TextField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      fillColor: Color(0xffa79feb),
                      filled: true,
                      prefixIcon: Icon(Icons.search,color: Colors.white),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(40)), 
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15),
                        hintText: "what Category are you searching for"),
                  ),
          ),
        ],
      ),
    ),
    SizedBox(height: 20,),
          Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text('Categories',style: TextStyle(color: Color(0xff818090),fontSize:20,fontWeight: FontWeight.bold, ),),
           SizedBox(width: 130),
            Icon(Icons.delete,color: Color(0xFF6c60e0),size: 30,),
            SizedBox(width: 10,),
            Icon(Icons.note_alt_sharp,color: Color(0xFF6c60e0),size: 30,),
            SizedBox(width: 10,),
            Icon(Icons.compare_arrows ,color: Color(0xFF6c60e0),size: 30,),
          ],
        ),
        ),
Expanded(
  child:   GridView.count(crossAxisCount: 2,
  
  mainAxisSpacing: 20,
  
  crossAxisSpacing: 20,
  
  children: <Widget>[
    Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      child: Mycard(Colors.yellow.shade200)
      ),
    Container(
      child: Mycard(Colors.blue.shade200)
      ),
    Container(
      child: Mycard(Colors.purple.shade200)
      ),
    Container(
      child: Mycard(Colors.pink.shade200)
      ),
    Container(
      child: Mycard(Colors.green.shade200)
      ),
    Container(
      child: Mycard(Colors.orange.shade50)
      ),
  ]
  
  ),
),
     ],
    ),
    );
  }
}