import 'package:flutter/material.dart';
import 'package:fluttiebuds/pages/mentorsRoot/mentors.dart';

class MentorsManager extends StatefulWidget {
  // to use the properties passed to this widget access theme here
  final Map<String, String> startingProduct;
  MentorsManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _MentorsManagerState();
  }
}

class _MentorsManagerState extends State<MentorsManager> {
  List<Map<String, String>> _mentors = [];

  @override
  void initState() {
    if (widget.startingProduct != null) {
      _mentors.add(widget.startingProduct);
    }
    super.initState();
  }

  void _addMentor(Map<String, String> mentor) {
    setState(() {
      _mentors.add(mentor);
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Container(
          alignment: FractionalOffset(0.25, 0),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.08,
              right: 5.0,
              left: 10.0,
              bottom: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Super',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w200),
              ),
              Text(
                'Mentors',
                style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(child: Mentors(_mentors),)
      ],
    );
  }
    
}