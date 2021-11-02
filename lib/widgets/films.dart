import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Films extends StatelessWidget {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: pageController,
      children: <Widget>[
        Container(
          color: Colors.blue,
          child: Center(
            child: Text("sayfa1"),
          ),
        ),
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
