import 'package:flutter/material.dart';
import 'package:q2/src/models/cliente_model.dart';
import 'package:q2/src/providers/clientes_provider.dart';


class DomisEliminadosPage extends StatelessWidget {

  final ClienteProvider clienteProvider = new ClienteProvider();
  final ClienteModel    clienteModel    = new ClienteModel();

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text('Registro'),
        actions: <Widget>[

          IconButton(
            icon: Icon( Icons.delete_forever), 
            onPressed: null
            // onPressed: () => clienteProvider.borrarRespaldo(),
          )
        ],
      ),
      body: crearListadoDomis()
      
    );
  }


  Widget crearListadoDomis() {

    return FutureBuilder(
      future: clienteProvider.cargarRespaldo(),
      builder: (BuildContext context, AsyncSnapshot<List<ClienteModel>> snapshot) {
        if ( snapshot.hasData ) {

          final cliente = snapshot.data;

          return ListView.builder( 
            itemCount: cliente.length,
            itemBuilder: ( context, i ) => _crearCliente( context, cliente[i])
          );

        } else {
          return Center( child: CircularProgressIndicator(),);
        }
      },
    );
  }

  Widget _crearCliente( BuildContext context, ClienteModel clientemodel) {

    return ListTile(
      title: Text('${ clientemodel.nombre } - ${ clientemodel.telefono }'),
      subtitle: Text('${ clientemodel.direccion} - ${ clientemodel.barrio}'),
      onTap: () => Navigator.pushNamed(context, 'info domi'),
    );
  }
}