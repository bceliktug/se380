import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pattern_formatter/pattern_formatter.dart';
import 'package:se380_project/widgets/films.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.3),
              borderRadius: BorderRadius.circular(200),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                contentPadding: new EdgeInsets.only(left: 10),
                border: InputBorder.none,
                hintText: "Name and Surname",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.3),
              borderRadius: BorderRadius.circular(200),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                CreditCardFormatter(),
                LengthLimitingTextInputFormatter(
                    19) //=> 3 tane boş koyduğu için 19 yaptım
              ],
              decoration: InputDecoration(
                icon: Icon(Icons.credit_card),
                contentPadding: new EdgeInsets.only(left: 10),
                border: InputBorder.none,
                hintText: "Credit Card Number",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.3),
              borderRadius: BorderRadius.circular(200),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: TextField(
              keyboardType: TextInputType.name,
              inputFormatters: [
                DateInputFormatter(),
                LengthLimitingTextInputFormatter(10)
              ],
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
                contentPadding: new EdgeInsets.only(left: 10),
                border: InputBorder.none,
                hintText: "Date",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.3),
              borderRadius: BorderRadius.circular(200),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(3)],
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                contentPadding: new EdgeInsets.only(left: 10),
                border: InputBorder.none,
                hintText: "CVV",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white.withOpacity(.9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              child: const Text(
                "Pay",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Films()));
            },
          )
        ],
      ),
    );
  }
}
