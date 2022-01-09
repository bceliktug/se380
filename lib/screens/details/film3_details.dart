import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:se380_project/screens/book/book_now.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Film3D extends StatefulWidget {
  Film3D({Key? key}) : super(key: key);

  @override
  _Film3DState createState() => _Film3DState();
}

class _Film3DState extends State<Film3D> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "Wd2CzMcswZg",
      flags: YoutubePlayerFlags(autoPlay: false));

  @override
  Widget build(BuildContext context) {
    String filmName = 'Matrix Resurrections';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 300,
                decoration: BoxDecoration(color: Colors.red),
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.redAccent,
                )),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Matrix Resurrections",
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
                    padding: EdgeInsets.only(top: 10),
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
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
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
                              image: AssetImage("images/KeanuR.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.amber,
                        ),
                        margin: EdgeInsets.all(10),
                        width: 90,
                        height: 100,
                      ),
                      Text(
                        "Keanu Reeves",
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
                              image: AssetImage("images/CarrieA.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.amber,
                        ),
                        margin: EdgeInsets.all(10),
                        width: 90,
                        height: 100,
                      ),
                      Text(
                        "Carrie-Anne Moss",
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
                              image: AssetImage("images/YahyaA.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.amber,
                        ),
                        margin: EdgeInsets.all(10),
                        width: 90,
                        height: 100,
                      ),
                      Text(
                        "Yahya Abdul-Mateen II",
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
                              image: AssetImage("images/JessicaH.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.amber,
                        ),
                        margin: EdgeInsets.all(10),
                        width: 90,
                        height: 100,
                      ),
                      Text(
                        "Jessica Henwick",
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
                        "Lana Wachowski",
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
                        "2h 28m",
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
                        "Warner Bros, \nVillage Roadshow Pictures, \nVenus Castina Productions",
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
                    "Return to a world of two realities: one, everyday life; the other, what lies behind it. To find out if his reality is a construct, to truly know himself, Mr. Anderson will have to choose to follow the white rabbit once more.",
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
