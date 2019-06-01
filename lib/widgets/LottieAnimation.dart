import 'package:flutter/material.dart';
import 'package:fluttie/fluttie.dart';

class Lottie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LottieState();
  }
}

class _LottieState extends State<Lottie> {
  FluttieAnimationController dancingEmoji;

  @override
  void initState() {
    prepareAnimation();
    super.initState();
  }

  prepareAnimation() async {
     bool canBeUsed = await Fluttie.isAvailable();
    if (!canBeUsed) {
      print("Animations are not supported on this platform");
      return;
    }

    var instance = Fluttie();
    var dancingEmojiComosition =
        await instance.loadAnimationFromAsset('assets/animations/logo.json');
    dancingEmoji = await instance.prepareAnimation(dancingEmojiComosition,
        duration: const Duration(seconds: 3),
        repeatCount: const RepeatCount.infinite(),
        repeatMode: RepeatMode.START_OVER);
        if(mounted){
           setState(() {
        dancingEmoji.start(); //start our looped emoji animation
      });
        }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Center(
        child: FluttieAnimation(dancingEmoji),
      )
    );
  }
}
