import 'package:flutter/material.dart';

class CineRows extends StatefulWidget {
  final String rowName;
  List<int> freeSeats = [];
  int totalPrice = 0;
  Function(String) setTotalPrice;
  CineRows({
    Key? key,
    required this.rowName,
    required this.totalPrice,
    required this.setTotalPrice,
    required this.freeSeats,
    selectedSeat,
  }) : super(key: key);

  @override
  State<CineRows> createState() => _CineRowsState();
}

class _CineRowsState extends State<CineRows> {
  final int totalSeats = 9;
  List<int> selectedSeats = [];

  void selectSeat(seatNumber) {
    if (widget.freeSeats.contains(seatNumber)) {
      if (selectedSeats.contains(seatNumber)) {
        selectedSeats.removeWhere((item) => item == seatNumber);
        widget.setTotalPrice("decrease");
      } else {
        selectedSeats.add(seatNumber);
        widget.setTotalPrice("increase");
      }
    }
    /*print(widget.totalPrice);
    print(selectedSeats);
    print(widget.rowName);*/
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for (int i = 1; i < totalSeats; i++)
            InkWell(
              onTap: () => {
                setState(() {
                  selectSeat(i);
                })
              },
              child: Icon(
                Icons.event_seat,
                size: 40,
                color: !widget.freeSeats.contains(i)
                    ? Colors.red.shade400
                    : selectedSeats.contains(i)
                        ? Colors.yellow
                        : Colors.white,
              ),
            )
        ],
      ),
    );
  }
}
