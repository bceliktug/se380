class DateTimeModel {
  final String day;
  final String number;

  DateTimeModel({required this.day, required this.number});

  static List<DateTimeModel> listDate = [
    DateTimeModel(day: "Thu", number: "28"),
    DateTimeModel(day: "Fri", number: "29"),
    DateTimeModel(day: "Sat", number: "30"),
    DateTimeModel(day: "Sun", number: "31"),
    DateTimeModel(day: "Mon", number: "1"),
  ];

  static List<String> listTime = [
    "11:30 AM",
    "12:50 AM"
        "3:50 PM"
        "5:30 PM"
        "7:30 PM"
  ];
}
