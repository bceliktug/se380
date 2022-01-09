import 'package:flutter/material.dart';
import 'package:se380_project/screens/details/film3_details.dart';
import 'package:se380_project/widgets/CustomPageRoutef.dart';
import 'package:se380_project/screens/book/book_now.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Film3 extends StatelessWidget {
  const Film3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String filmName = 'Matrix Resurrections';
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("images/matrixbg.jpg"), fit: BoxFit.fitHeight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).push(
                CustomPageRoutef(
                  child: Film3D(),
                ),
              ),
              child: Container(
                height: 470,
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
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(60, 10, 60, 0),
                      height: 280,
                      width: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/matrixP.jpg"),
                            fit: BoxFit.fitHeight),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Matrix Resurrections",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "IMDB Point:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: RatingBar.builder(
                            //flutter pub.dev'den alındı
                            itemSize: 30,
                            initialRating: 2.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 6.0),
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
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                                decoration: BoxDecoration(
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
                          padding: EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Booknow(
                                    movieName: filmName,
                                  ),
                                ),
                              );
                            },
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
            ),
          ],
        ),
      ),
    );
  }
}
