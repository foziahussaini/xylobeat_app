import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[500],
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 42, vertical: 2,),
                  margin: EdgeInsets.only(top: 6, left: 30, right: 30, bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.green[200]),
                  child: Text("A 🎵🎶",style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),),)
              ],
            ),
            SizedBox(height: 14,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    AssetsAudioPlayer.newPlayer().open(Audio("assets/audio/A.wav"),);
                  },
                  child: Container(
                    width: 50,
                    height: 180,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 50,),
                    color: Colors.white,
                    child: Text("A \n🎶", style: TextStyle(fontSize: 30, color: Colors.black),),
                  ),
                ),
                SizedBox(width: 8,),
                GestureDetector(
                  onTap: (){
                    AssetsAudioPlayer.newPlayer().open(Audio("assets/audio/B.wav"),);
                  },
                  child: Container(
                    width: 50,
                    height: 180,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 50,),
                    color: Colors.black,
                    child: Text("B \n🎶", style: TextStyle(fontSize: 30, color: Colors.white),),
                  ),
                ),
                SizedBox(width: 8,),
                GestureDetector(
                  onTap: (){
                    AssetsAudioPlayer.newPlayer().open(Audio("assets/audio/C.wav"),);
                  },
                  child: Container(
                    width: 50,
                    height: 180,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 50,),
                    color: Colors.white,
                    child: Text("C \n🎵", style: TextStyle(fontSize: 26),),
                  ),
                ),
                SizedBox(width: 8,),
                GestureDetector(
                  onTap: (){
                    AssetsAudioPlayer.newPlayer().open(Audio("assets/audio/D.wav"),);
                  },
                  child: Container(
                    width: 50,
                    height: 180,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 50,),
                    color: Colors.black,
                    child: Text("D \n🎶", style: TextStyle(fontSize: 30, color: Colors.white),),
                  ),
                ),
                SizedBox(width: 8,),
                GestureDetector(
                  onTap: (){
                    AssetsAudioPlayer.newPlayer().open(Audio("assets/audio/D.wav"),);
                  },
                  child: Container(
                    width: 50,
                    height: 180,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 50,),
                    child: Text("E \n🎵", style: TextStyle(fontSize: 25),),
                  ),
                ),
                SizedBox(width: 8,),
                GestureDetector(
                  onTap: (){
                    AssetsAudioPlayer.newPlayer().open(Audio("assets/audio/E.wav"),);
                  },
                  child: Container(
                    width: 50,
                    height: 180,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 50,),
                    color: Colors.black,
                    child: Text("F \n🎵", style: TextStyle(fontSize: 25, color: Colors.white),),
                  ),
                ),
              ],
            )
          ],
        ),),
    );
  }
}

