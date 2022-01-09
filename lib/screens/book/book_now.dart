import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:se380_project/widgets/cine_rows.dart';
import 'package:se380_project/widgets/cine_screen.dart';
import 'package:se380_project/widgets/datetime_model.dart';

class Booknow extends StatefulWidget {
  Booknow({
    Key? key,
    required this.movieName,
  }) : super(key: key);
  final String movieName;

  @override
  _BooknowState createState() => _BooknowState(movieName);
}

class _BooknowState extends State<Booknow> {
  String movieName;
  int totalPrice = 0;

  _BooknowState(
    this.movieName,
  );

  int get getTotalPrice => totalPrice;

  set setTotalPrice(int totalPrice) => this.totalPrice = totalPrice;

  void onCallBack(String command) {
    //print("alerted / total price : $totalPrice /  $command");
    if (command == "increase") {
      setTotalPrice = totalPrice + 5;
    } else if (command == "decrease") {
      setTotalPrice = totalPrice - 5;
    }
    //print("updated price : $totalPrice ");
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/cinema2.jpg"),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Color(0xff21242C),
                    Color(0xff21242C).withOpacity(.5),
                    Color(0xff21242C).withOpacity(.1),
                  ],
                ),
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                  child: Container(
                    color: Color(0xff21242C).withOpacity(.1),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            child: SizedBox(
              width: 400,
              child: IconButton(
                icon: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      movieName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    )
                  ],
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              height: 80,
              width: 15,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: DateTimeModel.listDate.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        DateTimeModel.listDate[index].selected =
                            !DateTimeModel.listDate[index].selected;
                      });
                    }, //======>>>> tek item seçilcek Hocaya sorulcak <<<<======
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: 100,
                        width: 75,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: DateTimeModel.listDate[index].selected
                                ? Colors.amber.withOpacity(.4)
                                : Colors.white.withOpacity(.2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                                size: 12,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                DateTimeModel.listDate[index].day,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                DateTimeModel.listDate[index].number,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: 40,
              width: 100,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: Time.listTime.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        Time.listTime[index].selected =
                            !Time.listTime[index].selected;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: 100,
                        width: 75,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Time.listTime[index].selected
                                ? Colors.amber.withOpacity(.4)
                                : Colors.grey.withOpacity(.7),
                          ),
                          child: Center(
                            child: Text(
                              Time.listTime[index].time,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.fromLTRB(40, 210, 0, 100),
            child: CineScreen(),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 270, horizontal: 180),
            child: Text(
              "Screen",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 320),
            child: Column(
              children: [
                CineRows(
                    totalPrice: getTotalPrice,
                    setTotalPrice: onCallBack,
                    freeSeats: [1, 2, 7],
                    rowName: "A"),
                CineRows(
                    totalPrice: getTotalPrice,
                    setTotalPrice: onCallBack,
                    freeSeats: [3, 5, 8],
                    rowName: "B"),
                CineRows(
                    totalPrice: getTotalPrice,
                    freeSeats: [7, 6, 2, 1],
                    setTotalPrice: onCallBack,
                    rowName: "C"),
                CineRows(
                    totalPrice: getTotalPrice,
                    freeSeats: [5, 6, 8, 7],
                    setTotalPrice: onCallBack,
                    rowName: "D"),
                CineRows(
                    totalPrice: getTotalPrice,
                    freeSeats: [1, 2, 3, 4, 5, 6, 7, 8],
                    setTotalPrice: onCallBack,
                    rowName: "E"),
                CineRows(
                    totalPrice: getTotalPrice,
                    freeSeats: [1, 2, 3, 6, 7, 8],
                    setTotalPrice: onCallBack,
                    rowName: "F"),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.fromLTRB(48, 590, 48, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.yellow,
                      size: 10,
                    ),
                    Text(
                      "Selected",
                      style: TextStyle(color: Colors.yellow, fontSize: 15),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 10,
                    ),
                    Text(
                      " Avaible",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.red.shade400,
                      size: 10,
                    ),
                    Text(
                      "Unavaible",
                      style:
                          TextStyle(color: Colors.red.shade400, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 610),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      "Price: $totalPrice",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Pay",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

/*class _ItemDate extends StatelessWidget {
  final DateTimeModel date;
  const _ItemDate({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Expanded(
          child: ListView.builder(
            itemCount: date.number.length,
            itemBuilder: (context, state) => Container(
              height: 100,
              width: 75,
              decoration: BoxDecoration(
                color: date == date.number
                    ? Colors.amber
                    : const Color(0xff4A5660),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_today,
                      color: Colors.white.withOpacity(.8), size: 13),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    date.day,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    date.number,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/