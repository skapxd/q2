import 'package:flutter/material.dart';


class HeaderProductosPainter extends CustomPainter {


  @override
  void paint(Canvas canvas, Size size) {
    

    final lapiz = new Paint();

    // Porpiedades
    // lapiz.color = Color.fromRGBO(239 , 184, 16, 1);
    // lapiz.color = Color.fromRGBO(161, 35, 18, 1);
    lapiz.color = Colors.white;
    // .fill - para rellenar // .stroke para dibujar lineas
    lapiz.style = PaintingStyle.fill; 
    lapiz.strokeWidth = 5;

    final path = new Path();

    final width  = size.width;
    final height = size.height;


    // Dibujar con el path y el lapiz
    // path.moveTo( width * 0.05, height * 0.11);
    path.moveTo( width * 0.05, height * 0.07);
    path.lineTo( width * 0.05, height * 0.95);
    path.quadraticBezierTo( width * 0.05, height * 0.99, width * 0.15, height * 0.99);
    path.lineTo( width * 0.85, height * 0.99);
    path.quadraticBezierTo( width * 0.95, height * 0.99, width * 0.95, height * 0.95);
    path.lineTo( width * 0.95, height * 0.085);
    // path.lineTo( width * 0.95, height * 0.035);
    path.quadraticBezierTo( width * 0.95, height * 0.05,  width * 0.85, height * 0.053);
    // path.quadraticBezierTo( width * 0.95, height * 0.015,  width * 0.85, height * 0.02108);
    path.lineTo( width * 0.15, height * 0.075);
    // path.lineTo( width * 0.15, height * 0.05);
    path.quadraticBezierTo( width * 0.05, height * 0.078, width * 0.05, height * 0.11);
    // path.quadraticBezierTo( width * 0.05, height * 0.053, width * 0.05, height * 0.075);

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  
}