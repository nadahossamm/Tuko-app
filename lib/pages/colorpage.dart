import 'package:flutter/material.dart';
import 'package:flutterapptask2/Model/colors_member.dart';
import 'package:flutterapptask2/shape.dart';

void main() => runApp(colorpage());

class colorpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Colors"),
            backgroundColor: Colors.green,

          ),
          body: Container(
            color: Colors.green,

            child: ListView.builder(
                itemCount: colorlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return shape(
                    image: colorlist[index].image,
                    numberseng: colorlist[index].englishName,
                    numbersjp: colorlist[index].japaneseName,
                  );
                }),
          ),
        ));
  }
}
