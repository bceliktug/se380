import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:se380_project/screens/book/book_now.dart';
import 'package:se380_project/widgets/films.dart';

import 'screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Films(),
    );
  }
}
