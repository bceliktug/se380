import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Film1D extends StatelessWidget {
  const Film1D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                "video",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Venom: Let There Be Carnage",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
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
                    padding: EdgeInsets.only(top: 10),
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
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Text("Sci-Fi",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),

                  /* Container(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {}, //eklencek
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
                  )*/
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.centerLeft,
              child: Text("  CAST",
                  style: GoogleFonts.actor(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("images/tm_photo.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.amber,
                        ),
                        margin: EdgeInsets.all(10),
                        width: 90,
                        height: 100,
                      ),
                      Text(
                        "Tom Hardy",
                        style: GoogleFonts.actor(color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("images/wd_photo.jpg"),
                          fit: BoxFit.fill),
                      color: Colors.amber,
                    ),
                    margin: EdgeInsets.all(10),
                    width: 90,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 65, 10, 5),
                      child: Text(
                        "Woody \nHarrelson",
                        style: GoogleFonts.actor(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("images/mw_photo.jpg"),
                          fit: BoxFit.fill),
                      color: Colors.amber,
                    ),
                    margin: EdgeInsets.all(10),
                    width: 90,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 65, 10, 5),
                      child: Text(
                        "Michelle \nWilliams",
                        style: GoogleFonts.actor(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("images/nh_photo.jpg"),
                          fit: BoxFit.fill),
                      color: Colors.amber,
                    ),
                    margin: EdgeInsets.all(10),
                    width: 90,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 65, 10, 5),
                      child: Text(
                        "Naomie \nHarris",
                        style: GoogleFonts.actor(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("images/sg_photo.jpg"),
                          fit: BoxFit.fill),
                      color: Colors.amber,
                    ),
                    margin: EdgeInsets.all(10),
                    width: 90,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 65, 10, 5),
                      child: Text(
                        "Stephen \nGraham",
                        style: GoogleFonts.actor(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
