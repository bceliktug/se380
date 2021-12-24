import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:se380_project/widgets/datetime_model.dart';

class Booknow extends StatefulWidget {
  const Booknow({
    Key? key,
    required this.movieName,
  }) : super(key: key);
  final String movieName;

  @override
  _BooknowState createState() => _BooknowState(movieName);
}

class _BooknowState extends State<Booknow> {
  String movieName;
  _BooknowState(this.movieName);
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
          child: Container(
            padding: EdgeInsets.only(left: 20.0),
            height: 90,
            width: 15,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: DateTimeModel.listDate.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: SizedBox(
                    height: 100,
                    width: 75,
                    child: Column(
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
                              color: Colors.white, fontSize: 17),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          DateTimeModel.listDate[index].number,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    ));
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