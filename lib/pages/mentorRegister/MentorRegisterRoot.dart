import 'package:flutter/material.dart';
import 'package:fluttiebuds/pages/mentorProfileCard/mentorCard.dart';

class MentorRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08, right: 5.0, left: 5.0, bottom: 2.0),
          child: Text('Super Mentors', style: TextStyle(fontSize: 20.0,),),
        ),
        Expanded(child: MentorList('Arvind'))
      ],
    ));
  }
}

class MentorList extends StatelessWidget {
  final String mentors;
  MentorList(this.mentors);

  Widget _getBodyWidget() {
    Widget mentorsList;
    mentorsList = ListView.builder(
      itemBuilder: mentorCard,
      itemCount: 10,
    );

    return mentorsList;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _getBodyWidget();
  }
}
