import 'package:flutter/material.dart';
import 'package:practiceui/components/button.dart';

import 'package:practiceui/menu/fastfood.dart';
import 'package:practiceui/menu/all.dart';
import 'package:practiceui/menu/kabab.dart';
import 'package:practiceui/menu/cake.dart';
import 'package:practiceui/menu/shakes.dart';
import 'package:practiceui/pages/mainhome.dart';
class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController pageController= PageController(initialPage: 0);
  int _currentindex=0;
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
        gradient: LinearGradient(colors: [Color(0xFFf58056),Color(0xFF2c77c7)],end: Alignment.bottomRight,begin: Alignment.topLeft,)
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 35),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.white,),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainhome()));},),
            SizedBox(width: 8,),
            Text('Recipes',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 26),),
            SizedBox(width: 8,),
            Icon(Icons.notifications,color: Colors.white,),
          ],
          ),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.all(20),
            child:
           TextField(
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
    Container(
      padding: EdgeInsets.fromLTRB(19, 16,0, 0),
      alignment: Alignment.centerLeft,
      child:
     Text('Labels',style: TextStyle(color: Color(0xff818090),fontWeight: FontWeight.bold,fontSize: 20),)),
    Container(
       padding: EdgeInsets.fromLTRB(15, 16,0, 0),
      alignment: Alignment.centerLeft,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Mybutton(t: 'All',index: 0,currentindex: _currentindex,pageController: pageController,),
      Mybutton(t: 'Cake',index: 1,currentindex: _currentindex,pageController: pageController,),
      Mybutton(t: 'Fast Food',index: 2,currentindex: _currentindex,pageController: pageController,),
      Mybutton(t: 'Kabab',index: 3,currentindex: _currentindex,pageController: pageController,),
      Mybutton(t: 'Shakes',index: 4,currentindex: _currentindex,pageController: pageController,),
      // Mybutton(t: 'Chinese',index: 4,currentindex: _currentindex,pageController: pageController,)
      ]
      ,),
    ),
SizedBox(height: 10,),
    Container(
        
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text('Bookmarks',style: TextStyle(color: Color(0xff818090),fontSize:20,fontWeight: FontWeight.bold, ),),
           SizedBox(width: 130),
            Icon(Icons.delete,color: Color(0xFF6c60e0),size: 30,),
            SizedBox(width: 10,),
            Icon(Icons.note_alt,color: Color(0xFF6c60e0),size: 30,),
            SizedBox(width: 10,),
            Icon(Icons.arrow_upward_outlined,color: Color(0xFF6c60e0),size: 30,),
          ],
        ),
        ),
        Expanded(child:
        PageView(
          onPageChanged: (x){
            setState(() {
              _currentindex=x;
            });
          },
          controller: pageController,
          children: <Widget>[
            All(),
            Cake(),
            Fastfood(),
            Kabab(),
            Shakes(),
      
            
          ],
        ),
        ),
      ],
        
    ),
    );
  }
}