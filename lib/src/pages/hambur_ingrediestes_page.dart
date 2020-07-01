import 'package:flutter/material.dart';
import 'package:q2/src/bloc/producto_bloc.dart';
import 'package:q2/src/bloc/provider.dart';



class HamburgesasIngredientesPage extends StatefulWidget {

  @override
  _IngredientesPageState createState() => _IngredientesPageState();
}

class _IngredientesPageState extends State<HamburgesasIngredientesPage> {

  final TextStyle styleAppBar              = TextStyle( fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(161, 35, 18, 1),);
  final TextStyle styleProducto            = TextStyle( fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleSubProducto         = TextStyle( fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleCantidad            = TextStyle( fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle stylePrecioSubProducto   = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleSubTitleProducto    = TextStyle( fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.red );
  final TextStyle styleCantidadSubProducto = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(161, 35, 18, 1) );
  
  final List<String> nadaPocoNormalExtraLista = ['Nada', 'Poco', 'Normal', 'Extra'];

  List<int> _ingredienteTomate   = List.filled(30, 2);
  List<int> _ingredienteEnsalada = List.filled(30, 2);
  List<int> _ingredienteRipio    = List.filled(30, 2);
  List<int> _ingredienteTocineta = List.filled(30, 2);
  List<int> _ingredienteQueso    = List.filled(30, 2);

  List<int> _adicionCarne    = new List.filled(30, 0);
  List<int> _adicionTocineta = new List.filled(30, 0);
  List<int> _adicionQueso    = new List.filled(30, 0);
  List<int> _adicionEnsalada = new List.filled(30, 0);

  int  lista   = 0;
  int cantidad = 1;

  ProductoBloc data = ProductoBloc();

  @override
  Widget build(BuildContext context) {

    this.data = Providers.ofProducto(context);
    
    final List producto = ModalRoute.of(context).settings.arguments;

    // final bloc = Provider.ofProducto(context);
  
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      
      // backgroundColor: Color.fromRGBO(161, 35, 18, 1),

      // backgroundColor: Color.fromRGBO(245, 245, 240, 1),

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

                _cardproductoCompleto(width: width, index: 10, valor: 11, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 11, valor: 12, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 12, valor: 13, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 13, valor: 14, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 14, valor: 15, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 15, valor: 16, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 16, valor: 17, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 17, valor: 18, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 18, valor: 19, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 19, valor: 20, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 20, valor: 21, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 21, valor: 22, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 22, valor: 23, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 23, valor: 24, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 24, valor: 25, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 25, valor: 26, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 26, valor: 27, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 27, valor: 28, stream: producto[0],productoPaginaAnterior: producto[1] ),

                _cardproductoCompleto(width: width, index: 28, valor: 29, stream: producto[0],productoPaginaAnterior: producto[1] ),

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

      str == 'Tomate'   ? _ingredienteTomate[index]   += i : _ingredienteTomate   = _ingredienteTomate;
      str == 'Ensalada' ? _ingredienteEnsalada[index] += i : _ingredienteEnsalada = _ingredienteEnsalada;
      str == 'Ripio'    ? _ingredienteRipio[index]    += i : _ingredienteRipio    = _ingredienteRipio;
      str == 'Tocineta' ? _ingredienteTocineta[index] += i : _ingredienteTocineta = _ingredienteTocineta;
      str == 'Queso'    ? _ingredienteQueso[index]    += i : _ingredienteQueso    = _ingredienteQueso;

      if (productoPaginaAnterior == 'especial') {
        // Ingredientes
        data.cantidadEspecialIngredientesTomate(_ingredienteTomate);
        data.cantidadEspecialIngredientesEnsalada(_ingredienteEnsalada);
        data.cantidadEspecialIngredientesRipio(_ingredienteRipio);
        data.cantidadEspecialIngredientesTocineta(_ingredienteTocineta);
        data.cantidadEspecialIngredientesQueso(_ingredienteQueso);
        // Adiciones
        data.cantidadEspecialAdicionCarne(_adicionCarne);
        data.cantidadEspecialAdicionTocineta(_adicionTocineta);
        data.cantidadEspecialIngredientesQueso(_adicionQueso);
        data.cantidadEspecialAdicionEnsalada(_adicionEnsalada);

        print(_ingredienteQueso);
        print(data.superIngredientesQueso);


        print('Especial');

      } else if( productoPaginaAnterior == 'super'){
        // Ingredientes
        data.cantidadSuperIngredientesTomate(_ingredienteTomate);
        data.cantidadSuperIngredientesEnsalada(_ingredienteEnsalada);
        data.cantidadSuperIngredientesRipio(_ingredienteRipio);
        data.cantidadSuperIngredientesTocineta(_ingredienteTocineta);
        data.cantidadSuperIngredientesQueso(_ingredienteQueso);
        // Adiciones
        data.cantidadSuperAdicionCarne(_adicionCarne);
        data.cantidadSuperAdicionTocineta(_adicionTocineta);
        data.cantidadSuperIngredientesQueso(_adicionQueso);
        data.cantidadSuperAdicionEnsalada(_adicionEnsalada);

        print('super');
        print(_ingredienteQueso);
        print(data.superIngredientesQueso);


      } else if( productoPaginaAnterior == 'trisuper') {
        // Ingredientes
        data.cantidadTrisuperIngredientesTomate(_ingredienteTomate);
        data.cantidadTrisuperIngredientesEnsalada(_ingredienteEnsalada);
        data.cantidadTrisuperIngredientesRipio(_ingredienteRipio);
        data.cantidadTrisuperIngredientesTocineta(_ingredienteTocineta);
        data.cantidadTrisuperIngredientesQueso(_ingredienteQueso);
        // Adiciones
        data.cantidadTrisuperAdicionCarne(_adicionCarne);
        data.cantidadTrisuperAdicionTocineta(_adicionTocineta);
        data.cantidadTrisuperIngredientesQueso(_adicionQueso);
        data.cantidadTrisuperAdicionEnsalada(_adicionEnsalada);

        print('trisuper');
        print(_ingredienteQueso);
        print(data.triSuperIngredientesQueso);

      } else if (productoPaginaAnterior == 'perro grande con tocineta'){
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
    

    List<int> hamburguesa = new List.filled(30, 1);

    hamburguesa[index] = valor;

    return StreamBuilder<Object>(
      initialData: 1,
      stream: stream,
      builder: (context, snapshot) {

        final _info = Container(
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[
                  SizedBox(width: 30,),
                  Text('Hamburguesa # ${hamburguesa[index]}', style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold ),),
                ],
              ),

              SizedBox(height: 30,),

              Image(image: AssetImage('images/burger.png')),

              Divider( thickness: 1, color: Colors.black45, indent: 15, endIndent: 15,),

              // Text(i),

              _cardIngredientes( producto: 'Tomate',   width: width, i: _ingredienteTomate,    index: index, productoPaginaAnterior: productoPaginaAnterior),
              _cardIngredientes( producto: 'Ensalada', width: width, i: _ingredienteEnsalada,  index: index, productoPaginaAnterior: productoPaginaAnterior),
              _cardIngredientes( producto: 'Ripio',    width: width, i: _ingredienteRipio,     index: index, productoPaginaAnterior: productoPaginaAnterior),
              _cardIngredientes( producto: 'Tocineta', width: width, i: _ingredienteTocineta,  index: index, productoPaginaAnterior: productoPaginaAnterior),
              _cardIngredientes( producto: 'Queso',    width: width, i: _ingredienteQueso,     index: index, productoPaginaAnterior: productoPaginaAnterior),

              _adicones(context, adicion: 'Carne',    precio: '4.000', producto: _adicionCarne,    index: index, productoPaginaAnterior: productoPaginaAnterior),
              _adicones(context, adicion: 'Tocineta', precio: '2.500', producto: _adicionTocineta, index: index, productoPaginaAnterior: productoPaginaAnterior),
              _adicones(context, adicion: 'Queso',    precio: '3.000', producto: _adicionQueso,    index: index, productoPaginaAnterior: productoPaginaAnterior),
              _adicones(context, adicion: 'Ensalada', precio: '2.500', producto: _adicionEnsalada, index: index, productoPaginaAnterior: productoPaginaAnterior),

              SizedBox(height: 40,),
              
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

                    setState(() {
                      
                      _adicionCarne[index]    = adicion == 'Carne'    && _adicionCarne[index]     > 0 ? _adicionCarne[index]    -= 1 : _adicionCarne[index]     =  _adicionCarne[index];
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

                    setState(() {

                      _adicionCarne[index]    = adicion == 'Carne'    && _adicionCarne[index]     < 3 ? _adicionCarne[index]    += 1 : _adicionCarne[index]     =  _adicionCarne[index];
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

    if ( adicion == 'Carne') {
      
      return Text( '${_adicionCarne[index]}', style: styleCantidadSubProducto,);

    } else if ( adicion == 'Tocineta' ) {
      
      return Text( '${_adicionTocineta[index]}', style: styleCantidadSubProducto,);

    } else if ( adicion == 'Queso' ){
      
      return Text( '${_adicionQueso[index]}', style: styleCantidadSubProducto,);

    } else if( adicion == 'Ensalada' ) {
      
      return Text( '${_adicionEnsalada[index]}', style: styleCantidadSubProducto,);

    }
  }
}