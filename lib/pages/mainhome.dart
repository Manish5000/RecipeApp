import 'package:flutter/material.dart';
import 'package:practiceui/components/categorycard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceui/menu/fastfood.dart';
import 'package:practiceui/pages/homepage.dart';
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
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(colors: [Color(0xFFf58056),Color(0xFF2c77c7)],end: Alignment.bottomRight,begin: Alignment.topLeft,)
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 35),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.bubble_chart_rounded,color: Colors.white,size: 43,),
            SizedBox(width: 160,),
           
            Icon(Icons.notifications,color: Colors.white,size: 35,),
          ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 42,),
              Text('Hi, Bada Shahjada', style: GoogleFonts.roboto(color: Colors.white,fontSize: 20),),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 42,),
              Text('Welcome back', style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Icon(Icons.person_outline_rounded,color: Colors.white,size: 30,)
            ],
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(10),
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
  
  mainAxisSpacing: 25,
  
  crossAxisSpacing: 10,
  
  children: <Widget>[
    InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
      },
      child: Container(
       
        
        child: Mycard(c: Colors.yellow.shade100,image: 'assets/fastfoodhome.jpg',title: 'Fastfood', )
        ),
    ),
    InkWell(
       onTap: (){},
      child: Container(
        
        child: Mycard(c: Colors.blue.shade100,image: 'assets/chinesehome.jpg',title: 'Chinese',)
        ),
    ),
    InkWell(
       onTap: (){},
      child: Container(
        
        child: Mycard(c: Colors.purple.shade100,image: 'assets/kababhome.jpg',title: 'Kabab',)
        ),
    ),
    InkWell(
       onTap: (){},
      child: Container(
        
        child: Mycard(c: Colors.pink.shade100,image: 'assets/shakeshome.jpg',title: 'Shakes',)
        ),
    ),
    InkWell(
       onTap: (){},
      child: Container(
       
        child: Mycard(c:Colors.green.shade100,image: 'assets/fastfoodhome.jpg',title: '',)
        ),
    ),
    InkWell(
       onTap: (){},
      child: Container(
        
        child: Mycard(c: Colors.orange.shade100,image: 'assets/fastfoodhome.jpg',title: '',)
        ),
    ),
  ]
  
  ),
),
     ],
    ),
    );
  }
}