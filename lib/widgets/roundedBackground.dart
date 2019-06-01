import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttiebuds/pages/mentorRegister/MentorRegisterRoot.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final double padding;
  final double margin;
  final Function onPress;

  RoundedButton({this.title, this.padding, this.margin, this.onPress});
  @override
   Widget build(BuildContext context) {
    // TODO: implement build
    return new InkWell(
      onTap: () {
        onPress();
      },
      child: Container(
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.indigo[800],
            Colors.indigo[700],
            Colors.indigo[600],
            Colors.indigo[400],
          ],
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    )
    );
  }
}
