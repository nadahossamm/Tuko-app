import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
//void main() => runApp(shape());

class shape extends StatelessWidget {
  final String image;
  final String numberseng;
  final String numbersjp;
  final String music;

  const shape({Key key, this.image, this.numberseng, this.numbersjp, this.music}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return (image == null)
        ? Container(

      height: 100,
      child: Column(
        children: [
          Row(

            children: [

              //Text(numberlist[index].image),
              Container(

              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,

                  children: [

                    Text(numberseng,style: TextStyle(color: Colors.white,fontSize: 20),
                    ),

                    Text(numbersjp,style: TextStyle(color: Colors.white,fontSize: 20),
                    ),

                  ],
                ),
              ),
              Expanded(

                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                          Icons.play_arrow
                      ),
                    ),
                  )),

            ],
          ),

        ],
      ),
    ): Container(

      //color: Colors.orange,
      height: 100,
      child: Column(
        children: [
          Row(

            children: [

              //Text(numberlist[index].image),
              Container(
                  color: Colors.orange[100],

                child: Image(
                  height: 100,
                 width: 100,
                  image: AssetImage(image),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,

                  children: [

                    Text(numberseng,style: TextStyle(color: Colors.white,fontSize: 20),
                    ),

                    Text(numbersjp,style: TextStyle(color: Colors.white,fontSize: 20),
                    ),

                  ],
                ),
              ),
              Expanded(

                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: (){
                           AudioCache player=AudioCache();
                            player.play(music);
                          },
                       icon: Icon(Icons.play_arrow,color:Colors.white),
                      ),
                    ),
                  )),

            ],
          ),

        ],
      ),

    );
  }
}