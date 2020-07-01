

import 'package:flutter/material.dart';
import 'package:q2/src/models/cliente.dart';
import 'package:q2/src/pages/cliente_final.dart';

class ClienteTile extends StatelessWidget {

  final Cliente cliente;

  ClienteTile({ this.cliente });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          title: Text(cliente.nombre),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ClienteFinal(cliente: cliente,);
            }));
          },
        ),
      ),
    );
  }
}