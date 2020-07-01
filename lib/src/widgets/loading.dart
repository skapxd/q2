import 'package:flutter/material.dart';

class Loading extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Center(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          CircularProgressIndicator(
            backgroundColor: Color.fromRGBO(161, 35, 18, 1), 
            valueColor: new AlwaysStoppedAnimation<Color>(Color.fromRGBO(239 , 184, 16, 1)),
          ), 

          SizedBox(width: 30,),

          Text('cargando', style: TextStyle(color: Colors.blueGrey.withOpacity(0.7)),),

          
        ],
      ),
    );
  }
}