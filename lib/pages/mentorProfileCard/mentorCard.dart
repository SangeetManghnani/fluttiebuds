import 'package:flutter/material.dart';

Widget mentorCard(BuildContext context, int index) {
  return Container(
    height: 120.0,
    margin: EdgeInsets.only(top: 0.0, bottom: 20.0, right: 24.0, left: 24.0),
    child: new Stack(
      children: <Widget>[_mentorDetails, _mentorThumbnail],
    ),
  );
}

final _mentorThumbnail = Padding(
    padding: EdgeInsets.only(top: 22),
    child: CircleAvatar(
      radius: 40.0,
      backgroundImage: NetworkImage(
          "https://miro.medium.com/fit/c/256/256/1*wAzu9YxUdm0s71CRHGGlmw.jpeg"),
      backgroundColor: Colors.transparent,
    ));

// final _mentorThumbnail = Container(
//   margin: EdgeInsets.symmetric(vertical: 16.0),
//   alignment: FractionalOffset.centerLeft,
//   decoration: BoxDecoration(
//      shape: BoxShape.circle,
//      borderRadius: new BorderRadius.circular(8.0),
//   ),
//   child: new Image(
//     image: new NetworkImage('https://miro.medium.com/fit/c/256/256/1*wAzu9YxUdm0s71CRHGGlmw.jpeg'),
//     height: 92.0,
//     width: 92.0,
//   ),
// );

final _mentorDetails = new Container(
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
          offset: new Offset(11.0, 11.0),
        )
      ]),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 60),
        child: Row(
          children: <Widget>[
            Text(
              'Yash Soni',
              style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
            ),
            Text(
              'IN',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w200,
                  color: Colors.white),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'java, javascript, html, flutter',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w100,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/twitter.png',
                height: 20,
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              Image.asset(
                'assets/images/github.png',
                height: 20,
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              Image.asset(
                'assets/images/envelope.png',
                height: 20,
                width: 20,
              ),
            ],
          )),
    ],
  ),
);
