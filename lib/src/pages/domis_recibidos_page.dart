

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q2/src/models/cliente.dart';
// import 'package:q2/src/models/cliente.dart';
// import 'package:q2/src/models/cliente_model.dart';
// import 'package:q2/src/providers/clientes_provider.dart';
import 'package:q2/src/service/database.dart';

import 'cliente_list.dart';


class DomisRecibidosPage extends StatefulWidget {

  @override
  _DomisRecibidosPageState createState() => _DomisRecibidosPageState();
}

class _DomisRecibidosPageState extends State<DomisRecibidosPage> {

  // final clienteProvider = new ClienteProvider();
  

  @override
  Widget build(BuildContext context) {

    return StreamProvider<List<Cliente>>.value(
      value: DatabaseService().clientesCeja,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Domicilios Recibidos'),
          backgroundColor: Colors.white,
          elevation: 0.5,
          actions: <Widget>[
            IconButton(
              icon: Icon( Icons.restore_from_trash), 
              onPressed: () {
                Navigator.pushNamed(context, 'domi delet');
              }
            )
          ],
        ),
        // body: _crearListadoDomis()
        body: ClienteList(),
      ),
    );
  }

  // Widget _crearListadoDomis() {

  //   return FutureBuilder(
  //     future: clienteProvider.cargarCliente(),
  //     builder: (BuildContext context, AsyncSnapshot<List<ClienteModel>> snapshot) {
  //       if ( snapshot.hasData ) {

  //         final cliente = snapshot.data;

  //         return ListView.builder( 
  //           itemCount: cliente.length,
  //           itemBuilder: ( context, i ) => _crearCliente( context, cliente[i])
  //         );

  //       } else {
  //         return Center( child: CircularProgressIndicator(),);
  //       }
  //     },
  //   );
  // }

  // Widget _crearCliente( BuildContext context, ClienteModel clientemodel) {

  //   return Dismissible(
  //     key: UniqueKey(),
  //     background: Container(
  //       color: Colors.red,
  //     ),
  //     onDismissed: ( direccion ) {
  //       // clienteProvider.borrarCliente(clientemodel.id);
  //     },
  //     child: ListTile(
  //       title: Text('${ clientemodel.nombre } - ${ clientemodel.telefono }'),
  //       subtitle: Text('${ clientemodel.direccion} - ${ clientemodel.barrio}'),
  //       onTap: () => Navigator.pushNamed(context, 'info domi'),
  //     ),
  //   );
  // }

}