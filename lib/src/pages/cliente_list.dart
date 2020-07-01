import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:q2/src/models/cliente.dart';

import 'cliente_tile.dart';

class ClienteList extends StatefulWidget {
  @override
  _ClienteListState createState() => _ClienteListState();
}

class _ClienteListState extends State<ClienteList> {
  @override
  Widget build(BuildContext context) {

    final cliente = Provider.of<List<Cliente>>(context) ?? [];
    
    cliente.forEach((client){
      print(client.nombre);
      print(client.mensaje);
    });

    return ListView.builder(
      itemCount: cliente.length,
      itemBuilder: (context, index) {
        return ClienteTile(cliente: cliente[index]);
      },

    );
  }
}