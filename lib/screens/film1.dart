import 'package:flutter/material.dart';

class Film1 extends StatelessWidget {
  const Film1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("images/venom2.jpg"), fit: BoxFit.fitHeight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 380,
              width: 200,
              margin: EdgeInsets.fromLTRB(50, 200, 50, 0),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 2,
                    ),
                  ],
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(200)),
              child: Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.fromLTRB(30, 40, 30, 50),
                      ),
                      onPressed: () {},
                      child: Text("hi man")), /*Circle Image eklenicek */
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
