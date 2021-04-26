import 'package:flutter/material.dart';
import 'package:flutterapptask2/Model/numbersmodel.dart';
import 'package:flutterapptask2/shape.dart';

void main() => runApp(numbers());

class numbers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.orange,

        child: ListView.builder(
            itemCount: numberlist.length,
            itemBuilder: (BuildContext context, int index) {
              return shape(
                image: numberlist[index].image,
                numberseng: numberlist[index].numberseng,
                numbersjp: numberlist[index].numbersjp,
                music: numberlist[index].music,
              );
            }),
      ),
    ));
  }
}
