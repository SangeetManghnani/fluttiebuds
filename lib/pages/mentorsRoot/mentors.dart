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
}
