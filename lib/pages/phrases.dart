import 'package:flutter/material.dart';
import 'package:flutterapptask2/Model/phrases_model.dart';
import 'package:flutterapptask2/shape.dart';

void main() => runApp(phrases());

class phrases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Phrases"),
            backgroundColor: Colors.blue,

          ),
          body: Container(
            color: Colors.blue,

            child: ListView.builder(
                itemCount: phraselist.length,
                itemBuilder: (BuildContext context, int index) {
                  return shape(
                  //image: phraselist[index].image,
                    numberseng: phraselist[index].englishName,
                    numbersjp: phraselist[index].japaneseName,
                  );
                }),
          ),
        ));
  }
}
