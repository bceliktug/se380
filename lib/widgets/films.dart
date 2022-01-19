import 'package:flutter/material.dart';
import 'package:se380_project/screens/films/film1.dart';
import 'package:se380_project/screens/films/film2.dart';
import 'package:se380_project/screens/films/film3.dart';

class Films extends StatelessWidget {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: pageController,
      children: <Widget>[
        Film1(),
        Film2(),
        Film3(),
      ],
    );
  }
}
