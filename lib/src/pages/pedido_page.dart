import 'package:flutter/material.dart';
import 'package:q2/src/bloc/producto_bloc.dart';
import 'package:q2/src/bloc/provider.dart';


class PedidoPage extends StatefulWidget {

  @override
  _PedidoPageState createState() => _PedidoPageState();
}

class _PedidoPageState extends State<PedidoPage> {

  final TextStyle styleProducto            = TextStyle( fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleSubTitleProducto    = TextStyle( fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.red );
  final TextStyle styleCantidadSubProducto = TextStyle( fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(161, 35, 18, 1) );
  final TextStyle styleAppBar              = TextStyle( fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(161, 35, 18, 1));


  @override
  Widget build(BuildContext context) {

    final dataProduc = Providers.ofProducto(context);

    final bloc = Providers.ofProducto(context);

    final height = MediaQuery.of(context).size.height;

    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'datosDomisilio');

            // Ingredientes
            dataProduc.cantidadEspecialIngredientesTomate([2]);
            dataProduc.cantidadEspecialIngredientesEnsalada([2]);
            dataProduc.cantidadEspecialIngredientesRipio([2]);
            dataProduc.cantidadEspecialIngredientesTocineta([2]);
            dataProduc.cantidadEspecialIngredientesQueso([2]);
            // Adiciones
            dataProduc.cantidadEspecialAdicionCarne([2]);
            dataProduc.cantidadEspecialAdicionTocineta([2]);
            dataProduc.cantidadEspecialIngredientesQueso([2]);
            dataProduc.cantidadEspecialAdicionEnsalada([2]);
        },
        backgroundColor: Colors.red,
        child: Icon(
          Icons.navigate_next,
          size: 50,
        ),
      ),

      // backgroundColor: Color.fromRGBO(161, 35, 18, 1),
      // backgroundColor: Color.fromRGBO(245, 245, 240, 1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            SizedBox(height: 30,),

            SizedBox( height:  height * 0.015, ),
            // Center(
            //   child: Text('Tu Orden', style: styleAppBar,)
            // ),

            ListTile(
              title:  Row(
                children: <Widget>[
                  SizedBox(width: 50,),
                  Text('Tu Orden', style: styleAppBar,),
                ],
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios), 
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
            ),

            SizedBox(height: 20,),

            // Hamburgesas
            _card(bloc, producto: bloc.especialStream,  nombreProducto: 'especial', rutaIngredientes: 'ingredientes hambur', rutaAdiciones: 'adiciones'),

            SizedBox(height: 10,),

            _card(bloc, producto: bloc.superStream,     nombreProducto: 'super',    rutaIngredientes: 'ingredientes hambur', rutaAdiciones: 'adiciones'),

            SizedBox(height: 10,),

            _card(bloc, producto: bloc.trisuperStream,  nombreProducto: 'trisuper', rutaIngredientes: 'ingredientes hambur', rutaAdiciones: 'adiciones'),
            
            SizedBox(height: 10,),


            /////////////////////////////////////////////////////////////
            // Perros
            _card(bloc, producto: bloc.perroGrandeTocinetaStream,   nombreProducto: 'perro grande con tocineta',  rutaIngredientes: 'ingredientes perro' , rutaAdiciones: 'adiciones' ),
 
            SizedBox(height: 10,),

            _card(bloc, producto: bloc.perroGrandeStream,           nombreProducto: 'perro grande',               rutaIngredientes: 'ingredientes perro' , rutaAdiciones: 'adiciones' ),
            
            SizedBox(height: 10,),
            
            _card(bloc, producto: bloc.perroPequegnoTocinetaStream, nombreProducto: 'perro pequeño con tocineta', rutaIngredientes: 'ingredientes perro' , rutaAdiciones: 'adiciones' ),

            SizedBox(height: 10,),

            _card(bloc, producto: bloc.perroPequegnoStream,         nombreProducto: 'perro pequeño',              rutaIngredientes: 'ingredientes perro' , rutaAdiciones: 'adiciones' ),

            SizedBox(height: 10,),

            ///////////////////////////////////////////////////////////////////
            // Perras
            _card(bloc, producto: bloc.grandePerraStream,   nombreProducto: 'perra grande',   rutaIngredientes: 'ingredientes perro' , rutaAdiciones: 'adiciones' ),
            SizedBox(height: 10,),

            _card(bloc, producto: bloc.pequegnaPerraStream, nombreProducto: 'perra pequeña',  rutaIngredientes: 'ingredientes perro' , rutaAdiciones: 'adiciones' ),

            SizedBox(height: 10,),
            
          ],
        ),
      )
    );
  }
  


  _card( ProductoBloc bloc, {Stream<int> producto, String nombreProducto, String rutaIngredientes, String rutaAdiciones}) {

    return StreamBuilder(
      stream: producto ,
      initialData: 0,
      builder: (BuildContext context, AsyncSnapshot snapshot){

        nombreProducto = snapshot.data > 1 && nombreProducto == 'especial'                  ? nombreProducto = 'especiales'                  : nombreProducto;
        nombreProducto = snapshot.data > 1 && nombreProducto == 'perro grande con tocineta' ? nombreProducto = 'perros grandes con tocineta' : nombreProducto;
        nombreProducto = snapshot.data > 1 && nombreProducto == 'perro grande'              ? nombreProducto = 'perros grandes'              : nombreProducto;
        nombreProducto = snapshot.data > 1 && nombreProducto == 'perro pequeño con tocineta'? nombreProducto = 'perros pequeños con tocineta': nombreProducto;
        nombreProducto = snapshot.data > 1 && nombreProducto == 'perra grande'              ? nombreProducto = 'perras grandes'              : nombreProducto;
        nombreProducto = snapshot.data > 1 && nombreProducto == 'perra pequeña'             ? nombreProducto = 'perras pequeñas'             : nombreProducto;
        

        final _info =  Container(
          padding: EdgeInsets.symmetric( horizontal: 10),
          width: double.infinity,
          // height: 200,
          child: Card(
            color: Color.fromRGBO(239 , 184, 16, 1),
            elevation: 10.0,
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
            child: Column(
              children: <Widget>[
                ListTile(
                  
                  title: Text('Has pedido ${ snapshot.data } $nombreProducto', style: styleProducto,),
                  subtitle: Text('¿Quieres que tenga todos los ingredientes?', style: styleCantidadSubProducto,),
                ),
                RaisedButton(
                  child: Text('Adiciona ó modifica tu producto', style: styleCantidadSubProducto,),
                  elevation: 0,
                  shape: StadiumBorder() ,
                  onPressed: () => Navigator.pushNamed(context, rutaIngredientes, arguments: [ producto, nombreProducto])
                ),
                // FlatButton(
                //   child: Text('Ingredientes'),
                //   shape: StadiumBorder(),
                //   onPressed: () => Navigator.pushNamed(context, rutaIngredientes, arguments: [ producto, nombreProducto ] )                   
                // ),
              ],
            ),
          ),
        );

        final _card = snapshot.data > 0 ? _info : Container(); 

        return _card;

      },
    );
  }

}