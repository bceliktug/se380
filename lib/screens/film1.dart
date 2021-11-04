import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
                borderRadius: BorderRadius.circular(200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.fromLTRB(30, 40, 30, 50),
                    ),
                    onPressed: () {},
                    child: Text("Hi Man"),
                    /*Image.asset(
                      "venom2-a.jpg",
                      fit: BoxFit.contain,
                    ),*/
                  ),
                  /*Circle'a Image eklenicek */
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Venom: Let There Be Carnage",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 25),
                        child: Text(
                          "IMDB Point:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: RatingBar.builder(
                          //flutter pub.dev'den alındı
                          itemSize: 30,
                          initialRating: 3.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                              decoration: BoxDecoration(
                                /* boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ],*/
                                border: Border.all(color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(200),
                              ),
                              child: Text(
                                "Action",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(200),
                              ),
                              padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                              child: Text("Adventure",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(200),
                              ),
                              child: Text("Sci-Fi",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 35),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "BOOK NOW",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
