

import 'package:flutter/material.dart';
import 'package:q2/src/pages/zona_de_producto.dart';

class ProductosPage extends StatefulWidget {

  @override
  _ProductosPageState createState() => _ProductosPageState();
}

class _ProductosPageState extends State<ProductosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          _fondoProducto(),
          HeaderProductos()
        ],
      )
      );
    
  }

  Widget _fondoProducto() {

    return Container (
      width: double.infinity,
      color: Color.fromRGBO(161, 35, 18, 1),
    );
  }


}