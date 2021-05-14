import 'package:flutter/material.dart';
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.3763333,size.height*0.3336667);
    path_0.lineTo(size.width*0.6255000,size.height*0.3323333);
    path_0.lineTo(size.width*0.6253333,size.height*0.5833333);
    path_0.quadraticBezierTo(size.width*0.5320417,size.height*0.6913333,size.width*0.4985000,size.height*0.6913333);
    path_0.quadraticBezierTo(size.width*0.4691250,size.height*0.6921667,size.width*0.3750000,size.height*0.5866667);
    path_0.lineTo(size.width*0.3763333,size.height*0.3336667);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

