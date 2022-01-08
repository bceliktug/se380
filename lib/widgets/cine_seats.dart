import 'package:flutter/material.dart';

class CineSeats {
  final String seatRow;
  final int seatNum;
  final List<int> freeSeats;

  const CineSeats({
    required this.freeSeats,
    required this.seatNum,
    required this.seatRow,
  });

  static List<CineSeats> listSeats = [
    CineSeats(freeSeats: [1, 2, 3, 5, 6, 8], seatNum: 6, seatRow: 'A'),
    CineSeats(freeSeats: [1, 3, 6, 8], seatNum: 6, seatRow: 'A'),
    CineSeats(freeSeats: [1, 2, 3, 6, 8], seatNum: 6, seatRow: 'A'),
    CineSeats(freeSeats: [1, 2, 8], seatNum: 6, seatRow: 'A'),
    CineSeats(freeSeats: [1, 2, 5, 6, 7, 8], seatNum: 6, seatRow: 'A'),
  ];
}
