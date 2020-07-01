import 'package:flutter/material.dart';
import 'package:q2/src/service/authservice.dart';

class EsperandoConfimacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthService().signOut();
          // LoginPage();
          Navigator.pushNamedAndRemoveUntil(context, 'login', (Route<dynamic> route) => false);
          // Navigator.popUntil(context, ModalRoute.withName(name));
        },
        backgroundColor: Color.fromRGBO(239 , 184, 16, 1),
        child: Icon(
          Icons.undo,
          size: 50,
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Center(
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset('images/hecho2.png'),
            ),
          ),

          SizedBox(height: 30,),

          Text('Su Pedido ha sido realizado con exito '),
          Text('espere la confirmación')
        ],
      ),
    );
  }
}