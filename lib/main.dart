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
  void onLetterTap(String letter){
    setState(() {
      AssetsAudioPlayer.newPlayer().open(Audio("assets/audio/$letter.wav"),);
    });
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
            height: 540,
            child: Card(
              elevation: 24,
              color: Colors.brown.withOpacity(0.02),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // first row
                        GestureDetector(
                          onTap: (){
                            onLetterTap("A");},
                          child: Container(
                            width: width,
                            height: height,
                            padding: padding,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                            color: Colors.red[900],),
                            child: Text("A 🎶", style: TextStyle(fontSize: 30, color: Colors.white),),),
                        ),
                    // second row
                    SizedBox(height: sizedBox,),
                        GestureDetector(
                          onTap: (){
                            onLetterTap("B");},
                          child: Container(
                            width: width,
                            height: height,
                            padding: padding,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                            color: Colors.green,),
                            child: Text("B 🎶", style: TextStyle(fontSize: 30, color: Colors.white),),),
                        ),
                    // 3rd row
                    SizedBox(height: sizedBox,),
                    GestureDetector(
                      onTap: (){
                        onLetterTap("C");},
                      child: Container(
                        width: width,
                        height: height,
                        padding: padding,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                        color: Colors.blue,),
                        child: Text("C  🎶", style: TextStyle(fontSize: 30, color: Colors.white),),),
                    ),
                    // fourth row
                    SizedBox(height: sizedBox,),
                        GestureDetector(
                          onTap: (){
                            onLetterTap("D");
                          },
                          child: Container(
                            width: width,
                            height: height,
                            padding: padding,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                            color: Colors.yellowAccent,),
                            child: Text("D  🎶", style: TextStyle(fontSize: 30, color: Colors.white),),
                          ),
                        ),
                        // 5th row
                    SizedBox(height: sizedBox,),
                    GestureDetector(
                      onTap: (){
                        onLetterTap("E");
                      },
                      child: Container(
                        width: width,
                        height: height,
                        padding: padding,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                        color: Colors.deepOrange,),
                        child: Text("E 🎶", style: TextStyle(fontSize: 30, color: Colors.white),),
                      ),
                    ),
                        // 6th row
                    SizedBox(height: sizedBox,),
                    GestureDetector(
                      onTap: (){
                        onLetterTap("F");
                      },
                      child: Container(
                        width: width,
                        height: height,
                        padding: padding,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                        color: Colors.purple,),
                        child: Text("F 🎶", style: TextStyle(fontSize: 30, color: Colors.white),),
                      ),
                    ),
                        // 7th row
                    SizedBox(height: sizedBox,),
                    GestureDetector(
                      onTap: (){
                        onLetterTap("G");
                      },
                      child: Container(
                        width: width,
                        height: height,
                        padding: padding,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                          color: Colors.deepPurple,),
                        child: Text("G 🎶", style: TextStyle(fontSize: 30, color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ),
      ),
    );
  }
}

