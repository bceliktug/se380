import 'package:flutter/material.dart';

class CineRows extends StatelessWidget {
  final String seatRow;
  final int seatNum;
  final List<int> freeSeats;

  const CineRows({
    Key? key,
    required this.freeSeats,
    required this.seatNum,
    required this.seatRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
