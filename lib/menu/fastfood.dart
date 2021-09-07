import 'package:flutter/material.dart';

import '../components/foodbox.dart';

class Fastfood extends StatefulWidget {
  

  @override
  _FastfoodState createState() => _FastfoodState();
}

class _FastfoodState extends State<Fastfood> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      children: <Widget>[
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/burger.jpg',name: 'Burger',)
        ),
        SizedBox(height: 10,),
        
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/pizza.jpg',name: 'Pizza',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/sandwich.jpg',name: 'Sandwich',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/chowmein.jpg',name: 'Chowmein',)
        ),
        SizedBox(height: 10,),
        // GestureDetector(
        //   onTap: (){},
        //   child: Foodbox(imgpath: 'assets/fruit.jpg',name: 'Fruit Cake',)
        // ),
        // SizedBox(height: 10,),
      ],
    );
      
    
  }
}