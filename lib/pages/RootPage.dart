import 'package:flutter/material.dart';
import 'package:fluttiebuds/pages/menteeRegister/MenteeRegisterRoot.dart';
import 'package:fluttiebuds/pages/mentorRegister/MentorRegisterRoot.dart';
import 'package:fluttiebuds/widgets/roundedBackground.dart';


class FluttieRoot extends StatelessWidget {
  setMentee(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MenteeRegister()));
  }
  setMentor(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MentorRegister()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FluttieBuds'),
          backgroundColor: Colors.indigo[700],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[Text('Connecting to the mentors')],
              ),
              RoundedButton(
                title: 'Mentor',
                padding: 10,
                margin: 20,
                onPress: () => setMentor(context)
              ),
              Icon ( Icons.swap_vert),
              RoundedButton(
                title: 'Mentee',
                padding: 10,
                margin: 20,
                onPress: () => setMentee(context)
              ),
            ],
          ),
        ));
  }
}
