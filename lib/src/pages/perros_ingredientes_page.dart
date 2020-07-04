import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q2/src/bloc/producto_bloc.dart';
import 'package:q2/src/bloc/provider.dart';
import 'package:q2/src/providers/lista_hamburgesas_provider.dart';



class PerrosIngredientesPage extends StatefulWidget {

  @override
  _IngredientesPageState createState() => _IngredientesPageState();
}

class _IngredientesPageState extends State<PerrosIngredientesPage> {

  final TextStyle styleAppBar              = TextStyle( fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(161, 35, 18, 1),);
  final TextStyle styleProducto            = TextStyle( fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleSubProducto         = TextStyle( fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleCantidad            = TextStyle( fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle stylePrecioSubProducto   = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleSubTitleProducto    = TextStyle( fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.red );
  final TextStyle styleCantidadSubProducto = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(161, 35, 18, 1) );
  
  final List<String> nadaPocoNormalExtraLista = ['Nada', 'Poco', 'Normal', 'Extra'];

  List<int> _ingredienteEnsalada = List.filled(10, 2);
  List<int> _ingredienteRipio    = List.filled(10, 2);
  List<int> _ingredienteTocineta = List.filled(10, 2);
  List<int> _ingredienteQueso    = List.filled(10, 2);

  List<int> _adicionTocineta = new List.filled(10, 0);
  List<int> _adicionQueso    = new List.filled(10, 0);
  List<int> _adicionEnsalada = new List.filled(10, 0);

  int  lista   = 0;
  int cantidad = 1;

  ProductoBloc data = ProductoBloc();

  ListaHamburguesas listaHamburgesas = ListaHamburguesas();

  @override
  Widget build(BuildContext context) {

    this.listaHamburgesas = Provider.of<ListaHamburguesas>(context);

    this.data = Providers.ofProducto(context);
    
    final List producto = ModalRoute.of(context).settings.arguments;

    // final bloc = Provider.ofProducto(context);
  
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      
      backgroundColor: Color.fromRGBO(238, 241, 249, 1),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'datosDomisilio');
        },
        // backgroundColor: Colors.red,
        backgroundColor: Color.fromRGBO(239 , 184, 16, 1),
        child: Icon(
          Icons.navigate_next,
          size: 50,
        ),
      ),

      body: StreamBuilder<Object>(
        stream: producto[0],
        initialData: 0,
        builder: (context, snapshot) {

          return SingleChildScrollView( 
            child: Column(
              children: <Widget>[

                SizedBox(height: 30,),

                SizedBox( height:  height * 0.015, ),

                // Center(
                //   child: Text('Ingredientes', style: styleAppBar,)
                // ),
                ListTile(
                title:  Row(
                  children: <Widget>[
                    SizedBox(width: 30,),
                    Text('Ingredientes', style: styleAppBar,),
                  ],
                ),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios), 
                  onPressed: () {
                    Navigator.pop(context);
                  }
                ),
              ),
                  
                SizedBox( height:  height * 0.035, ),

                SizedBox( height:  height * 0.015, ),

                _cardproductoCompleto(width: width, index: 0, valor: 1 , stream: producto[0],productoPaginaAnterior: producto[1],  ), 

                _cardproductoCompleto(width: width, index: 1, valor: 2 , stream: producto[0],productoPaginaAnterior: producto[1] ), 

                _cardproductoCompleto(width: width, index: 2, valor: 3 , stream: producto[0],productoPaginaAnterior: producto[1] ), 

                _cardproductoCompleto(width: width, index: 3, valor: 4 , stream: producto[0],productoPaginaAnterior: producto[1] ), 

                _cardproductoCompleto(width: width, index: 4, valor: 5 , stream: producto[0],productoPaginaAnterior: producto[1] ), 

                _cardproductoCompleto(width: width, index: 5, valor: 6 , stream: producto[0],productoPaginaAnterior: producto[1] ), 

                _cardproductoCompleto(width: width, index: 6, valor: 7 , stream: producto[0],productoPaginaAnterior: producto[1] ), 

                _cardproductoCompleto(width: width, index: 8, valor: 9 , stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 9, valor: 10, stream: producto[0],productoPaginaAnterior: producto[1] ),


                SizedBox( height: 20,),
              ]
            ),
          );
        }
      )
    );
  }



  cambiarValorDeLista({ int i, int index, String str, String productoPaginaAnterior}) {

    setState(() {

      str == 'Ensalada' ? _ingredienteEnsalada[index] += i : _ingredienteEnsalada = _ingredienteEnsalada;
      str == 'Ripio'    ? _ingredienteRipio[index]    += i : _ingredienteRipio    = _ingredienteRipio;
      str == 'Tocineta' ? _ingredienteTocineta[index] += i : _ingredienteTocineta = _ingredienteTocineta;
      str == 'Queso'    ? _ingredienteQueso[index]    += i : _ingredienteQueso    = _ingredienteQueso;



      if (productoPaginaAnterior == 'perro grande con tocineta'){
        print(productoPaginaAnterior);

      } else if( productoPaginaAnterior == 'perro grande') {
        print(productoPaginaAnterior);

      } else if ( productoPaginaAnterior == 'perro pequeño con tocineta'){
        print(productoPaginaAnterior);

      } else if ( productoPaginaAnterior == 'perro pequeño') {
        print(productoPaginaAnterior);

      } else if( productoPaginaAnterior == 'perra grande') {
        print(productoPaginaAnterior);

      } else if ( productoPaginaAnterior == 'perra pequeña') {
        print(productoPaginaAnterior);

      }
      
      
    });

  }



  _cardproductoCompleto({ double width, int index, int valor, Stream stream, String productoPaginaAnterior }) {
    

    List<int> hamburguesa = new List.filled(10, 1);

    hamburguesa[index] = valor;

    return StreamBuilder<Object>(
      initialData: 1,
      stream: stream,
      builder: (context, snapshot) {

        final _info = Container(
          child: Column(
            children: <Widget>[

              Wrap(
                children: <Widget>[
                  SizedBox(width: 30,),
                  Text(
                    '$productoPaginaAnterior # ${hamburguesa[index]}', 
                    style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold ),
                    textAlign: TextAlign.justify
                  ),
                ],
              ),

              SizedBox(height: 30,),

              Image(image: AssetImage('images/perros.png')),

              Divider( thickness: 1, color: Colors.black45, indent: 15, endIndent: 15,),

              // Text(i),

              _cardIngredientes( producto: 'Ensalada', width: width, i: _ingredienteEnsalada,  index: index, productoPaginaAnterior: productoPaginaAnterior),
              _cardIngredientes( producto: 'Ripio',    width: width, i: _ingredienteRipio,     index: index, productoPaginaAnterior: productoPaginaAnterior),
              _cardIngredientes( producto: 'Tocineta', width: width, i: _ingredienteTocineta,  index: index, productoPaginaAnterior: productoPaginaAnterior),
              _cardIngredientes( producto: 'Queso',    width: width, i: _ingredienteQueso,     index: index, productoPaginaAnterior: productoPaginaAnterior),

              _adicones(context, adicion: 'Tocineta', precio: '2.500', producto: _adicionTocineta, index: index, productoPaginaAnterior: productoPaginaAnterior),
              _adicones(context, adicion: 'Queso',    precio: '3.000', producto: _adicionQueso,    index: index, productoPaginaAnterior: productoPaginaAnterior),
              _adicones(context, adicion: 'Ensalada', precio: '2.500', producto: _adicionEnsalada, index: index, productoPaginaAnterior: productoPaginaAnterior),

              SizedBox(height: 60,),
              
            ],
          ),
        );

        final container = index < snapshot.data  ? _info : Container();

        return container;
      }
    );
  }



  _cardIngredientes({  String producto, double width, int index, List<int> i, String productoPaginaAnterior}) {

    return Container(
      padding: EdgeInsets.symmetric( horizontal: 5, vertical: 5),
      width: double.infinity,
      height: 80,
      child: Card(
        
        color: Colors.white,
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0) ),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[

            SizedBox(width: 20,),

            Expanded(
              
              child: Text(producto, style: TextStyle( fontWeight: FontWeight.bold ))
            ),

            IconButton(
              icon: Icon(Icons.remove, color: Color.fromRGBO(161, 35, 18, 1),), 
              onPressed: i[index] > 0  ? () => cambiarValorDeLista( i: -1, index: index, str: producto, productoPaginaAnterior: productoPaginaAnterior) : null,
              splashColor: Color.fromRGBO(255, 255, 255, 0),
              highlightColor: Color.fromRGBO(255, 255, 255, 0),
            ),

            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 80,
                  height: 30,
                  child: Center(
                    child: Text('${ nadaPocoNormalExtraLista[i[index]] }', style: styleCantidadSubProducto,)
                  ),
                  
                  color: Colors.white,
                ),
              ),
            ),

            IconButton(
              icon: Icon(Icons.add, color: Color.fromRGBO(161, 35, 18, 1),), 
              onPressed:  i[index] < 3 ? () => cambiarValorDeLista( i: 1, index: index, str: producto, productoPaginaAnterior: productoPaginaAnterior) : null ,
              splashColor: Color.fromRGBO(255, 255, 255, 0),
              highlightColor: Color.fromRGBO(255, 255, 255, 0),
            )
          ],
        )
      ),
    );
        
  }




Widget _adicones( BuildContext context, { String adicion, String precio,  List<int> producto, int index, String productoPaginaAnterior } ){

    return Column(
      children: <Widget>[

        ListTile( 
          contentPadding: EdgeInsets.symmetric( horizontal: 30 ) ,
          title: Text( adicion, style: styleSubProducto,),
          
          trailing: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width:  70,
              height: 30,
              child: Center(child: Text( precio, style: stylePrecioSubProducto,)),
              color: Colors.white,
            ),
          ),
        ),

        SizedBox(
          height: 35,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              SizedBox(
                
                child: Container(
                  child: Text('Cantidad', style: styleCantidad,),
                ),
              ),

              SizedBox( width: 10,),

              SizedBox(
                height: 40,
                child: IconButton(
                  // highlightColor: Colors.white,
                  icon: Icon(Icons.remove, color: Color.fromRGBO(161, 35, 18, 1),), 
                  onPressed: () {

                    cambiarValorDeLista(productoPaginaAnterior: productoPaginaAnterior);

                    setState(() {
                      
                      _adicionTocineta[index] = adicion == 'Tocineta' && _adicionTocineta[index]  > 0 ? _adicionTocineta[index] -= 1 : _adicionTocineta[index]  = _adicionTocineta[index];   
                      _adicionQueso[index]    = adicion == 'Queso'    && _adicionQueso[index]     > 0 ? _adicionQueso[index]    -= 1 : _adicionQueso[index]     = _adicionQueso[index];     
                      _adicionEnsalada[index] = adicion == 'Ensalada' && _adicionEnsalada[index]  > 0 ? _adicionEnsalada[index] -= 1 : _adicionEnsalada[index]  = _adicionEnsalada[index];            
                    });

                  }
              
                ),
              ),

              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width:  30,
                    height: 30,
                    child: Center(
                      child: validarTexto( adicion: adicion, index: index)
                    ),
                    
                    color: Colors.white,
                  ),
                ),
              ),
              
              SizedBox(
                height: 40,
                child: IconButton(
                  icon: Icon(Icons.add, color:  Color.fromRGBO(161, 35, 18, 1),), 
                  onPressed: (){

                    cambiarValorDeLista(productoPaginaAnterior: productoPaginaAnterior);

                    setState(() {

                      _adicionTocineta[index] = adicion == 'Tocineta' && _adicionTocineta[index]  < 3 ? _adicionTocineta[index] += 1 : _adicionTocineta[index]  = _adicionTocineta[index];
                      _adicionQueso[index]    = adicion == 'Queso'    && _adicionQueso[index]     < 3 ? _adicionQueso[index]    += 1 : _adicionQueso[index]     = _adicionQueso[index];
                      _adicionEnsalada[index] = adicion == 'Ensalada' && _adicionEnsalada[index]  < 3 ? _adicionEnsalada[index] += 1 : _adicionEnsalada[index]  = _adicionEnsalada[index];
                    }); 
                  }
                ),
              ),
              SizedBox( width: 15,)

            ],
          ),
        )
      ],
    );
  
  }



   validarTexto({ String adicion, int index }) {


    if ( adicion == 'Tocineta' ) {
      
      return Text( '${_adicionTocineta[index]}', style: styleCantidadSubProducto,);

    } else if ( adicion == 'Queso' ){
      
      return Text( '${_adicionQueso[index]}', style: styleCantidadSubProducto,);

    } else if( adicion == 'Ensalada' ) {
      
      return Text( '${_adicionEnsalada[index]}', style: styleCantidadSubProducto,);

    }
  }
}