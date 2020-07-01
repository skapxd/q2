import 'package:flutter/material.dart';


class FondoLogin{

  Widget crearFondo(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final fondoAzul = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Colors.blue[300],
            // Colors.blue[400],
            // Colors.blue[600],
            Color.fromRGBO(188, 65, 48, 1),
            Color.fromRGBO(178, 55, 38, 1),
            Color.fromRGBO(161, 35, 18, 1),
          ]
        )
      ),
    );

    final circulo = Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );

    return Stack(
      children: <Widget>[

        fondoAzul,
        Positioned( top: 90,  left: 30, child: circulo ),
        Positioned( top: -40, right: -30 , child: circulo ),
        Positioned( bottom: -50,  right: -10, child: circulo ),
        Positioned( bottom: -50,  left: -20, child: circulo ),

        Container(
          padding: EdgeInsets.only( top: 40 ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Icon( Icons.person_pin_circle, color: Colors.white, size: 100,),
                SizedBox( height: 10, width: double.infinity,),
                Text( 'Valida tu teléfono', style: TextStyle( color: Colors.white, fontSize: 20 ), )
              ],
            ),
          ),
        )
      ],
    );
  }
}