import 'package:flutter/material.dart';

// flutterpub.dev den örnek alındı...

class CustomPageRoutef extends PageRouteBuilder {
  final Widget child;
  CustomPageRoutef({
    required this.child,
  }) : super(
          transitionDuration: Duration(milliseconds: 300),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      ScaleTransition(scale: animation, child: child);
}
