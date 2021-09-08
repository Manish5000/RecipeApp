import 'package:flutter/material.dart';
import '../components/foodbox.dart';
class Shakes extends StatefulWidget {
  

  @override
  _ShakesState createState() => _ShakesState();
}

class _ShakesState extends State<Shakes> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      children: <Widget>[
       InkWell(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/stawberryshake.jpg',name: 'Stawberry Shake',)
        ),
        SizedBox(height: 10,),
        
        InkWell(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/oreoshake.jpg',name: 'Oreo Shake',)
        ),
        SizedBox(height: 10,),
        InkWell(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/kitkatshake.jpg',name: 'Kitkat Shake',)
        ),
        SizedBox(height: 10,),
        InkWell(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/pineappleshake.jpg',name: 'Pineapple Shake',)
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