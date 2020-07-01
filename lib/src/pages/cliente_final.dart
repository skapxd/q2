import 'package:flutter/material.dart';
import 'package:q2/src/models/cliente.dart';

class ClienteFinal extends StatelessWidget {
  final TextStyle styleAppBar = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, );

  final Cliente cliente;

  ClienteFinal({ this.cliente });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Del Cliente'),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: SafeArea(
        child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red[100],
                ),
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[

                      SizedBox(height: 20,),

                      Text('Datos de domicilio', style: styleAppBar,),

                      SizedBox(height: 20,),

                      _infoDomicilio(cliente.nombre, 'Nombre'),

                      _infoDomicilio(cliente.telefono, 'Teléfono'),

                      _infoDomicilio(cliente.direccion, 'Dirrección'),

                      _infoDomicilio(cliente.barrio, 'Barrio'),

                      SizedBox(height: 20,),

                      Text('Ha pedido', style: styleAppBar,),

                      SizedBox(height: 20,),

                      _infoPedido(cliente.especial, 'Especial'),

                      _infoPedido(cliente.superespecial, 'Super'),

                      _infoPedido(cliente.trisuper, 'Trisuper'),

                      _infoPedido(cliente.perroGrandeTocineta, 'Perro grande tocineta'),

                      _infoPedido(cliente.perroGrande, 'Perro grande'),

                      _infoPedido(cliente.perroPequegnoTocineta, 'Perro pequeño tocineta'),

                      _infoPedido(cliente.perroPequegno, 'Perro pequeño'),

                      _infoPedido(cliente.grandePerra, 'Perra grande'),

                      _infoPedido(cliente.pequegnaPerra, 'Perra pequeña'),

                      cliente.mensaje == '' ? Container() : Column(
                        children: <Widget>[

                          SizedBox(height: 20,),

                          Text('Mensaje del cliente', style: styleAppBar,),

                          SizedBox(height: 20,),
                          
                        ],
                      ),

                      _infoMensaje(cliente.mensaje)

                    ],
                  )
                )
              ),
            ),
          ),
      ),
    );
  }

  _infoDomicilio(String cliente, String campo) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // SizedBox(width: 20,),
              Text('$campo: ', style: styleAppBar),
              Text('$cliente', style: styleAppBar),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: <Widget>[
                Divider(
                  thickness: 2,
                  // color: Color.fromRGBO(161, 35, 18, 1),
                  // color: ,
                ),

                
                SizedBox(height: 5,),
              ],
            ),
          )
        ],
      ),
    );
  }


  _infoPedido(int cliente, String campo) {

    return cliente == 0 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // SizedBox(width: 20,),
              Text('$campo: ', style: styleAppBar),
              Text('$cliente', style: styleAppBar),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: <Widget>[
                Divider(
                  thickness: 2,
                  // color: Color.fromRGBO(161, 35, 18, 1),
                  // color: ,
                ),

                
                SizedBox(height: 5,),
              ],
            ),
          )
        ],
      ),
    );
  }

  
  Widget _infoMensaje(String cliente) {

    return cliente == null ? Container() : SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0),
        child: Text(
          cliente,
          // style: styleAppBar,
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

}