import 'package:flutter/material.dart';
import 'package:fluttiebuds/pages/mentorProfileCard/mentorCard.dart';

class Mentors extends StatelessWidget {
  final List<Map<String, String>> mentors;
  Mentors(this.mentors);

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
    return _getBodyWidget();
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return Scaffold(
  //       body: Column(
  //     children: <Widget>[
  //       Container(
  //         alignment: FractionalOffset(0.25, 0),
  //         margin: EdgeInsets.only(
  //             top: MediaQuery.of(context).size.height * 0.08,
  //             right: 5.0,
  //             left: 10.0,
  //             bottom: 0.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: <Widget>[
  //             Text(
  //               'Super',
  //               style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w200),
  //             ),
  //             Text(
  //               'Mentors',
  //               style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
  //             ),
  //           ],
  //         ),
  //       ),
  //       Expanded(child: MentorList('Arvind'))
  //     ],
  //   ));
  // }
  // }
}
