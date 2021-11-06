import 'package:flutter/material.dart';

class Film1D extends StatelessWidget {
  const Film1D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("images/venom2bg.jpg"), fit: BoxFit.fill),
      ),
      child: Container(
        child: Text("hi man"),
      ),
    );
  }
}
