import 'package:flutter/material.dart';

// class MentorCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return new Container(
//       height: 120.0,
//       margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
//       child: new Stack(
//         children: <Widget>[_mentorThumbnail, _mentorDetails],
//       ),
//     );
//   }
// }
Widget mentorCard(BuildContext context, int index) {
    return Container(
      height: 120.0,
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: new Stack(
        children: <Widget>[_mentorThumbnail, _mentorDetails],
      ),
    );
  }

final _mentorDetails = Container(
  margin: EdgeInsets.symmetric(vertical: 16.0),
  alignment: FractionalOffset.centerLeft,
  child: new Image(
    image: new AssetImage('assets/images/mars.png'),
    height: 92.0,
    width: 92.0,
  ),
);

final _mentorThumbnail = new Container(
  height: 124.0,
  margin: new EdgeInsets.only(left: 46.0),
  decoration: new BoxDecoration(
      color: new Color(0xFF333366),
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        )
      ]),
);
