import 'package:flutter/material.dart';

//https://www.youtube.com/watch?v=Z4-XLVRCRpA
//sinema perdesi resmi koymak yerine çizdirmeyi denedim burdan yardım aldım
//hoşuma gittiği için kullandım

class CineScreen extends StatelessWidget {
  const CineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: CustomPaint(
        painter: _ScreenCinemaPainter(),
      ),
    );
  }
}

class _ScreenCinemaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.black;

    final path = Path();
    path.moveTo(-30, 70);
    path.quadraticBezierTo(110, 0, 270, 70);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) =>
      false; //<= True ve ya false ayrımı nedir ?
  // TODO: implement shouldRepaint
}
