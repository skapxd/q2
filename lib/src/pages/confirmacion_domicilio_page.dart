import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q2/src/bloc/producto_bloc.dart';
// import 'package:q2/src/bloc/producto_bloc.dart';
import 'package:q2/src/bloc/provider.dart';
import 'package:q2/src/service/database.dart';
import 'package:q2/src/providers/lista_hamburgesas_provider.dart';
import 'package:q2/src/widgets/mostrar_factura.dart';

class ConfirmacionDomicilio extends StatefulWidget {
  final bool infoExeso2;
  ConfirmacionDomicilio({this.infoExeso2});

  @override
  _ConfirmacionDomicilioState createState() => _ConfirmacionDomicilioState();
}

class _ConfirmacionDomicilioState extends State<ConfirmacionDomicilio> {

  final TextStyle styleAppBar = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, );

  ListaHamburguesas listaHamburgesas  = ListaHamburguesas();
  ProductoBloc      data              = ProductoBloc();
  ProductoBloc      dataProduc        = ProductoBloc();

  int i = 0;
  
  @override
  Widget build(BuildContext context) {

    this.listaHamburgesas = Provider.of<ListaHamburguesas>(context);

    this.data = Providers.ofProducto(context);

    // color:  Color.fromRGBO(161, 35, 18, 1)
    final dataForm = Providers.of(context);
    
    dataProduc = Providers.ofProducto(context);

    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 241, 249, 1),
      appBar: AppBar(
        title: Text('Confirmación de domicilio'),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          Navigator.pushNamedAndRemoveUntil(context, 'esperandoConfirmacion', (Route<dynamic> route) => false);
          // Navigator.pushNamed(context, 'esperandoConfirmacion');

          await DatabaseService(tlf: dataForm.telefono).updateUserData(
            especial              : dataProduc.especial,
            superespecial         : dataProduc.superEspecial,
            trisuper              : dataProduc.trisuper,
            // perros
            perroGrandeTocineta   : dataProduc.perroGrandeTocineta,
            perroGrande           : dataProduc.perroGrande,
            perroPequegnoTocineta : dataProduc.perroPequegnoTocineta,
            perroPequegno         : dataProduc.perroPequegno,
            // perras
            grandePerra           : dataProduc.grandePerra,
            pequegnaPerra         : dataProduc.pequegnaPerra,     
            // datos domicilio
            nombre                : dataForm.nombre,
            barrio                : dataForm.barrio,
            direccion             : dataForm.direccion,
            mensaje               : dataForm.mensaje,   
            telefono              : dataForm.telefono, 
          );
        },
        // backgroundColor: Colors.red,
        backgroundColor: Color.fromRGBO(239 , 184, 16, 1),
        child: Icon(
          Icons.shopping_cart,
          size: 50,
        ),
      ),
      
      body: ImportarFactura(),
    );
  }

}