import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:se380_project/screens/film1.dart';

class Films extends StatelessWidget {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: pageController,
      children: <Widget>[
        Film1(),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text("sayfa2"),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Center(
            child: Text("sayfa3"),
          ),
        ),
      ],
    );
  }
}
