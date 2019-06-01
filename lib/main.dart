import 'package:flutter/material.dart';
import 'package:fluttiebuds/pages/RootPage.dart';

void main() => runApp(FluttieBuds());

class FluttieBuds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: FluttieRoot(),
      debugShowCheckedModeBanner: false,
    );
  }
}