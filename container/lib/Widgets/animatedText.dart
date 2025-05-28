import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class animatedtext extends StatelessWidget {
  const animatedtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animated Text",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText("Shreya Shankar",
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    speed: Duration(milliseconds: 100))
              ],
              displayFullTextOnTap: true,
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 100),
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText("Gorgeous",
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w600,color: Colors.red),
                ),
                RotateAnimatedText("Sanchita",
                  textStyle:
                  TextStyle(fontSize: 30, fontWeight: FontWeight.w600,color: Colors.red),
                ),
                RotateAnimatedText("Shankar",
                  textStyle:
                  TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
              // totalRepeatCount: 4,
              // pause: Duration(milliseconds: 100),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText("Hello World",textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w600, color: Colors.deepPurple)),
              WavyAnimatedText("Hello Shreya",textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w600, color: Colors.deepPurple))
            ]),
            Container(
              child: SizedBox(
                width: 250,
                // height: 120,
                child:TextLiquidFill(text: "LIQUIDY",waveColor: Colors.blue,boxBackgroundColor: Colors.red,textStyle: TextStyle(
                  fontSize: 90.0,
                  fontWeight: FontWeight.bold,
                ),
                  boxHeight: 300,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
