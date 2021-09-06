import 'package:flutter/material.dart';
import 'mybutton.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
     Column(
       children: [
         Container(
           height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFF6c60e0),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.arrow_back_ios,color: Colors.white,),
                SizedBox(width: 20,),
                Text('Cooking',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 26),),
                SizedBox(width: 20,),
                Icon(Icons.notifications,color: Colors.white,),
               ],
              ),
              SizedBox(height: 40,),
              TextField( 
                 onTap: (){},
                 style: TextStyle(fontSize: 15,height: 1,),
                  keyboardType: TextInputType.text,
                  decoration:
                  InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    filled: true,
                    fillColor: Color(0xFFa89fee),
                    hintText:'Search', border: OutlineInputBorder(borderRadius: BorderRadius.circular(22))),
                  ),
            ],
          ),
    ),
    
    Container(
          margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text('Labels',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
        )),
        SizedBox(height: 10,),
        Row(
          children: [
            Mybutton(m: 'All',),
            Mybutton(m: 'Cake',),
        Mybutton(m: 'Fastfood',),
        Mybutton(m: 'Kabab',),
        Mybutton(m: 'Chinese',),
      ],),
      SizedBox(height: 15,),
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text('Bookmarks',style: TextStyle(color: Colors.black,fontSize:24,fontWeight: FontWeight.bold, ),),
           SizedBox(width: 130),
            Icon(Icons.delete,color: Color(0xFF6c60e0),size: 30,),
            SizedBox(width: 10,),
            Icon(Icons.note_alt,color: Color(0xFF6c60e0),size: 30,),
            SizedBox(width: 10,),
            Icon(Icons.arrow_upward_outlined,color: Color(0xFF6c60e0),size: 30,),
          ],
        )),
        SizedBox(height: 15,),
        
        ],
        
        ),
        );
    
    
    
    


  }
}