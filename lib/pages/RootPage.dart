import 'package:flutter/material.dart';
import 'package:fluttiebuds/pages/menteeRegister/MenteeRegisterRoot.dart';
import 'package:fluttiebuds/pages/mentorRegister/MentorRegisterRoot.dart';
import 'package:fluttiebuds/widgets/LottieAnimation.dart';
import 'package:fluttiebuds/widgets/WavyClipper.dart';
import 'package:fluttiebuds/widgets/roundedBackground.dart';

class FluttieRoot extends StatelessWidget {
  setMentee(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => RegistrationFormMentee()));
  }

  setMentor(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => RegistrationForm()));
  }

  Widget _getBody(BuildContext context) {
    Widget body = Stack(
      children: <Widget>[
        ClipPath(
            clipper: WavyClipper(),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF333366),
              ),
              height: MediaQuery.of(context).size.height * 0.45,
            )),
        Center(
          child: Column(
            children: <Widget>[
              Lottie(),
              Text(
                'Fluttie',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w200),
              ),
              Text(
                'Buds',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
    return body;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        _getBody(context),
        Column(
          children: <Widget>[
            RoundedButton(
                title: 'Mentor',
                padding: 20,
                margin: 50,
                onPress: () => setMentor(context)),
            Icon(Icons.swap_vert),
            RoundedButton(
                title: 'Mentee',
                padding: 20,
                margin: 50,
                onPress: () => setMentee(context)),
          ],
        )
      ],
    ));
  }
}
