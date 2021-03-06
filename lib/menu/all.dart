import 'package:flutter/material.dart';
import '../components/foodbox.dart';


class All extends StatefulWidget {
  

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      
      physics: ScrollPhysics(),
      children: <Widget>[
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/donat.jpg',name: 'Donut Cake',)
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
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/paneerkabab.webp',name: 'Paneer Kabab',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/muttonkabab.webp',name: 'Mutton Kabab',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/chickenkabab.jpg',name: 'Chicken Kabab',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/stawberryshake.jpg',name: 'Stawberry Shake',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/oreoshake.jpg',name: 'Oreo Shake',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/kitkatshake.jpg',name: 'Kitkat Shake',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/pineappleshake.jpg',name: 'Pineapple Shake',)
        ),
        SizedBox(height: 10,),
       
      ],
    );
  }
}