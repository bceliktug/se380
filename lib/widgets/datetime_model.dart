class DateTimeModel {
  final String day;
  final String number;
  bool selected = false;

  DateTimeModel(
      {required this.day, required this.number, required this.selected});

  static List<DateTimeModel> listDate = [
    DateTimeModel(day: "Thu", number: "28", selected: false),
    DateTimeModel(day: "Fri", number: "29", selected: false),
    DateTimeModel(day: "Sat", number: "30", selected: false),
    DateTimeModel(day: "Sun", number: "31", selected: false),
    DateTimeModel(day: "Mon", number: "1", selected: false),
    DateTimeModel(day: "Tue", number: "2", selected: false),
    DateTimeModel(day: "Wed", number: "3", selected: false),
  ];
}

class Time {
  final String time;
  bool selected = false;

  Time({required this.time, required this.selected});

  static List<Time> listTime = [
    Time(time: "11:30 AM", selected: false),
    Time(time: "12:50 AM", selected: false),
    Time(time: "3:50 PM", selected: false),
    Time(time: "5:30 PM", selected: false),
    Time(time: "7:30 PM", selected: false),
  ];
}
