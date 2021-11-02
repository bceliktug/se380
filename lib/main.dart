import 'package:flutter/material.dart';
import 'package:se380_project/widgets/films.dart';

import 'screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Films(),
    );
  }
}
