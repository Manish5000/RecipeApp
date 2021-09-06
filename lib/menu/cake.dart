import 'package:flutter/material.dart';
import 'foodbox.dart';
class Cake extends StatefulWidget {
  @override
  _CakeState createState() => _CakeState();
}

class _CakeState extends State<Cake> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      children: <Widget>[
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/donat.jpg',name: 'Donat Cake',)
        ),
        SizedBox(height: 10,),
        
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/vanillacake.jpg',name: 'Vanilla Cake',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/pancake.jpg',name: 'Pancake Cake',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/cupcake.jpg',name: 'Cup Cake',)
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