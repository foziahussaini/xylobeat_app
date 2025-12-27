import 'dart:math';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  double sizedBox = 10;
  double width = 310;
  double height = 60;
  EdgeInsets padding = EdgeInsets.symmetric(horizontal: 42, vertical: 2,);
  List<String> letters = ["A", "B", "C", "D", "E", "F", "G"];
  String randomLetter = "A";

  void generateRandomLetter(){
    setState(() {
      randomLetter = letters[Random().nextInt(letters.length)];
    });
  }

  void onLetterTap(String letter){
    if(letter == randomLetter){
      AssetsAudioPlayer.newPlayer().open(
        Audio("assets/audio/$letter.wav"),);
    generateRandomLetter();}
  }

  GestureDetector buildNoteContainer({required String letter, required Color color, required double width,}){
    return GestureDetector(
      onTap: (){
        onLetterTap(letter);},
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
          color: color,),
        child: Center(child: Text(letter, style: TextStyle(fontSize: 30, color: Colors.white),)),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: Center(
          child: SizedBox(
            width: 300,
            height: 780,
            child: Card(
              elevation: 24,
              color: Colors.brown.withOpacity(0.02),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(randomLetter, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                    SizedBox(height: 40,),
                    // first row
                    buildNoteContainer(letter: "A", color: Colors.red, width: width),
                    // second row
                    SizedBox(height: sizedBox,),
                    buildNoteContainer(letter: "B", color: Colors.green, width: 280),
                    // 3rd row
                    SizedBox(height: sizedBox,),
                    buildNoteContainer(letter: "C", color: Colors.blue, width: 250),
                    // fourth row
                    SizedBox(height: sizedBox,),
                    buildNoteContainer(letter: "D", color: Colors.yellow, width: 220),
                        // 5th row
                    SizedBox(height: sizedBox,),
                    buildNoteContainer(letter: "E", color: Colors.orange, width: 190),
                        // 6th row
                    SizedBox(height: sizedBox,),
                    buildNoteContainer(letter: "F", color: Colors.purple, width: 160),
                        // 7th row
                    SizedBox(height: sizedBox,),
                    buildNoteContainer(letter: "G", color: Colors.pinkAccent, width: 130),
                  ],
                ),
              ),
          ),
        ),
      ),
    );
  }
}

