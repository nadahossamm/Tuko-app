import 'package:flutter/material.dart';
import 'package:flutterapptask2/pages/colorpage.dart';
import 'package:flutterapptask2/pages/phrases.dart';

import 'pages/numbers.dart';
import 'pages/family.dart';
import 'package:flutterapptask2/pages/numbers.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.\
  Widget portrait(context)
  {
    return Container(

      color: Colors.orange[100],

      child: Column(
        children: [
          GestureDetector(

            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return numbers();

              }));
            },
            child: Container(
              alignment:AlignmentDirectional(-0.8, 0),

              color: Colors.orange,
              height: 88,
              width: double.infinity,
              child: Text("Number",style: TextStyle(
                color: Colors.white,fontSize: 20,
              ),),


            ),
          ),

          GestureDetector(

            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return family();

              }));
            },
            child: Container(
              alignment:AlignmentDirectional(-0.8, 0),

              color: Colors.purple,
              height: 88,
              width: double.infinity,
              child: Text("Family members",style: TextStyle(
                color: Colors.white,fontSize: 20,
              ),),


            ),
          ),
          GestureDetector(

            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return colorpage();

              }));
            },
            child: Container(
              alignment:AlignmentDirectional(-0.8, 0),

              color: Colors.green,
              height: 88,
              width: double.infinity,
              child: Text("Colors",style: TextStyle(
                color: Colors.white,fontSize: 20,
              ),),


            ),
          ),
          GestureDetector(

            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return phrases();

              }));
            },
            child: Container(
              alignment:AlignmentDirectional(-0.8, 0),

              color: Colors.blue,
              height: 88,
              width: double.infinity,
              child: Text("Phrases",style: TextStyle(
                color: Colors.white,fontSize: 20,
              ),),


            ),
          ),


        ],
      ),
    );

  }
  Widget landscape(context)
  {
    return Container(

      color: Colors.orange[100],

      child: Column(
        children: [
          GestureDetector(

            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return numbers();

              }));
            },
            child: Container(
              alignment:AlignmentDirectional(-0.8, 0),

              color: Colors.orange,
              height:60,
              width: double.infinity,
              child: Text("Number",style: TextStyle(
                color: Colors.white,fontSize: 20,
              ),),


            ),
          ),

          GestureDetector(

            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return family();

              }));
            },
            child: Container(
              alignment:AlignmentDirectional(-0.8, 0),

              color: Colors.purple,
              height: 88,
              width: double.infinity,
              child: Text("Family members",style: TextStyle(
                color: Colors.white,fontSize: 20,
              ),),


            ),
          ),
          GestureDetector(

            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return colorpage();

              }));
            },
            child: Container(
              alignment:AlignmentDirectional(-0.8, 0),

              color: Colors.green,
              height: 60,
              width: double.infinity,
              child: Text("Colors",style: TextStyle(
                color: Colors.white,fontSize: 20,
              ),),


            ),
          ),
          GestureDetector(

            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return phrases();

              }));
            },
            child: Container(
              alignment:AlignmentDirectional(-0.8, 0),

              color: Colors.blue,
              height: 60,
              width: double.infinity,
              child: Text("Phrases",style: TextStyle(
                color: Colors.white,fontSize: 20,
              ),),


            ),
          ),


        ],
      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
          appBar: AppBar(
            title: Text('Toku',style: TextStyle(
              color: Colors.white,fontSize: 20,
            ),),
            backgroundColor: Colors.brown,
          ),
          body:OrientationBuilder(
            builder: (context,oriantation){
              if (oriantation==Orientation.portrait)
                {
                return  portrait(context);
    }
              else{
                return landscape(context);
              }
            },
          )
          // color: Colors.yellow,

        )
    );


  }
}


/*

*/