import 'package:flutter/material.dart';
import 'foodbox.dart';

class Kabab extends StatefulWidget {
 

  @override
  _KababState createState() => _KababState();
}

class _KababState extends State<Kabab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      children: <Widget>[
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/tandoorikabab.jpg',name: 'Tandoori Kabab',)
        ),
        SizedBox(height: 10,),
        
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/paneerkabab.jpg',name: 'Paneer Kabab',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/muttonkabab.jpg',name: 'Mutton Kabab',)
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/chickenkabab.jpg',name: 'Chicken Kabab',)
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