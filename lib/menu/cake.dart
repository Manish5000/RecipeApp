import 'package:flutter/material.dart';
import 'package:practiceui/pages/description.dart';
import '../components/foodbox.dart';
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
       InkWell(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/donat.jpg',name: 'Donut Cake',)
        ),
        SizedBox(height: 10,),
        //Divider(color: Colors.grey,endIndent: 30,indent: 30,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Description()));
          },
          child: Foodbox(imgpath: 'assets/vanillacake.jpg',name: 'Vanilla Cake',)
        ),
        SizedBox(height: 10,),
        InkWell(
          onTap: (){},
          child: Foodbox(imgpath: 'assets/pancake.jpg',name: 'Pancake Cake',)
        ),
        SizedBox(height: 10,),
        InkWell(
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