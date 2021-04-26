import 'package:flutter/material.dart';
import 'package:flutterapptask2/Model/family_member.dart';
import 'package:flutterapptask2/shape.dart';

void main() => runApp(family());

class family extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Family Members"),
            backgroundColor: Colors.purple,

          ),
          body: Container(
            color: Colors.purple,

            child: ListView.builder(
                itemCount: familylist.length,
                itemBuilder: (BuildContext context, int index) {
                  return shape(
                    image: familylist[index].image,
                    numberseng: familylist[index].englishName,
                    numbersjp: familylist[index].japaneseName,
                  );
                }),
          ),
        ));
  }
}
