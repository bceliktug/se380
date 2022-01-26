import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:se380_project/screens/details/film1_details.dart';
import 'package:se380_project/widgets/CustomPageRoutef.dart';
import 'package:se380_project/screens/book/book_now.dart';

class Film1 extends StatelessWidget {
  const Film1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String filmName = 'Venom 2';

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("images/venom2bg.jpg"), fit: BoxFit.fitHeight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).push(
                CustomPageRoutef(
                  child: const Film1D(),
                ),
              ),
              child: Container(
                height: 470,
                width: 200,
                margin: const EdgeInsets.fromLTRB(50, 200, 50, 0),
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
                      margin: const EdgeInsets.fromLTRB(60, 10, 60, 0),
                      height: 280,
                      width: 25,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("images/venom2-sa.png"),
                            fit: BoxFit.fitHeight),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 5),
                        child: const Text(
                          "Venom: Let There Be Carnage",
                          style:  TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "IMDB Point:",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: RatingBar.builder(
                            //flutter pub.dev'den alındı
                            itemSize: 30,
                            initialRating: 3.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 6.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
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
                                child: const Text(
                                  "Action",
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                                padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                                child: const Text("Adventure",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                                child: const Text("Sci-Fi",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
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
                            child: const Text(
                              "BOOK NOW",
                              style: const TextStyle(color: Colors.white),
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
