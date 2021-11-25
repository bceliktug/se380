import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:se380_project/widgets/video.dart';


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
              height: 300,
              decoration: BoxDecoration(color: Colors.red),
              child: VideoC(url: "https://www.youtube.com/watch?v=-FmWuCgJmxo")
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
                  Column(
                    children: [
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
                      ),
                      Text(
                        "Woody Harrelson",
                        style: GoogleFonts.actor(color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
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
                      ),
                      Text(
                        "Michelle Williams",
                        style: GoogleFonts.actor(color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
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
                      ),
                      Text(
                        "Naomie Harris",
                        style: GoogleFonts.actor(color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
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
                      ),
                      Text(
                        "Stephen Graham",
                        style: GoogleFonts.actor(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 50, 25, 25),
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade500)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: FractionalOffset(0.0, 1.0),
                    child: Row(children: [
                      Text("Directed By : ",
                          style: GoogleFonts.actor(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(
                        "Andy Serkis",
                        style: GoogleFonts.actor(fontSize: 16),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: FractionalOffset(0.0, 1.0),
                    child: Row(children: [
                      Text("Year : ",
                          style: GoogleFonts.actor(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(
                        "2021",
                        style: GoogleFonts.actor(fontSize: 16),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: FractionalOffset(0.0, 1.0),
                    child: Row(children: [
                      Text("Duration : ",
                          style: GoogleFonts.actor(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(
                        "1h 37m",
                        style: GoogleFonts.actor(fontSize: 16),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: FractionalOffset(0.0, 1.0),
                    child: Row(children: [
                      Text("Production : ",
                          style: GoogleFonts.actor(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(
                        "Marvel Entertainment, \nPascal Pictures, \nSony Pictures Entertainment (SPE)",
                        style: GoogleFonts.actor(fontSize: 16),
                      )
                    ]),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: new FractionalOffset(0.0, 1.0),
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Storyline",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Text(
                    "Eddie Brock struggles to adjust to his new life as the host of the alien symbiote Venom, which grants him super-human abilities in order to be a lethal vigilante. Brock attempts to reignite his career by interviewing serial killer Cletus Kasady, who becomes the host of the symbiote Carnage and escapes prison after a failed execution.",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 100,
              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: ElevatedButton(
                onPressed: () {}, //eklencek
                child: Text(
                  "BOOK NOW",
                  style: TextStyle(color: Colors.white, fontSize: 18),
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
        ),
      ),
    );
  }
}
