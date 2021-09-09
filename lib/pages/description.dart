import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceui/components/mybutton.dart';
import 'package:practiceui/pages/homepage.dart';
class Description extends StatefulWidget {
  

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          
            
             Container(
          height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                 gradient: LinearGradient(colors: [Color(0xFFf58056),Color(0xFF2c77c7)],end: Alignment.bottomRight,begin: Alignment.topLeft,)
                ),
                
            ),
          
          
             Container(
               
               margin: EdgeInsets.only(top: 10,left:10,right: 10),
              height: 620,
              padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  color: Colors.white70,
                  
                ),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [Icon(Icons.cake),
                      SizedBox(width: 5,),
                      Text('Title', style: GoogleFonts.roboto(fontSize: 22) ),],),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      SizedBox(width: 28,),
                      Text('Vanilla Cake', style: GoogleFonts.roboto(fontSize:15,fontWeight: FontWeight.w300, ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                   Row(children: [Icon(Icons.link),
                      SizedBox(width: 5,),
                      Text('URL', style: GoogleFonts.roboto(fontSize: 22) ),],),
                      SizedBox(height: 10,),
                      Row(
                    children: [
                      SizedBox(width: 28,),
                      Text('Vanilla Cake', style: GoogleFonts.roboto(fontSize:15,fontWeight: FontWeight.w300, ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.description),
                      SizedBox(width: 5,),
                      Text('Description', style: GoogleFonts.roboto(fontSize: 22) ),],),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      SizedBox(width: 28,),
                      Text("When you do come across a recipe that's\n specifically called vanilla cake and not white\n or yellow cake, look closely at the ingredients\n If it contains only egg whites, it's a white cake\n, and if it contains whole eggs, it's a yellow cake.\n The opposite end of the spectrum isn’t so\n simple. There’s a whole lot of terminology to\n describe what seems to be the same thing.\n But are white, yellow, and vanilla cake actually\n the same across the board", textAlign: TextAlign.justify, style: GoogleFonts.roboto(fontSize:15,fontWeight: FontWeight.w300, ),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(children: [Icon(Icons.photo),
                      SizedBox(width: 5,),
                      Text('Photos', style: GoogleFonts.roboto(fontSize: 22) ),
                      Smallbutton(color1: Color(0xFF6c60e0),color2: Colors.white,name: 'Cancel',)
                      ],),
                     
                
                      
                  ],
                  
                ),
                ),

          Positioned(
            top: 142,
            right: 75,
            child: CircleAvatar(radius: 22, child: Icon(Icons.notifications,color: Color(0xffa79feb),size: 35,),backgroundColor: Colors.white,),),
            Positioned(
            top: 142,
            right: 25,
            child: CircleAvatar(radius: 22, child: Icon(Icons.star_rate_rounded,color: Colors.orange.shade500,size: 40,),backgroundColor: Colors.white,),),
        
           Positioned(
             top: 40,
             left: 30,
             child: InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.white,),
             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));},),)
          ],
        )
        
        
    );
      
    
  }
}