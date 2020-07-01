import 'package:flutter/material.dart';
import 'package:q2/src/bloc/provider.dart';



class PerrosIngredientesPage extends StatefulWidget {

  @override
  _IngredientesPageState createState() => _IngredientesPageState();
}

class _IngredientesPageState extends State<PerrosIngredientesPage> {

  final TextStyle styleAppBar              = TextStyle( fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(239 , 184, 16, 1));
  final TextStyle styleProducto            = TextStyle( fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleSubTitleProducto    = TextStyle( fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.red );
  final TextStyle styleCantidadSubProducto = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(161, 35, 18, 1) );
  
  List _ensalada      = new List.filled( 30, true);
  List _ripio         = new List.filled( 30, true);
  List _salsas        = new List.filled( 30, true);
  List _queso         = new List.filled( 30, true); 

  List _roja          = new List.filled( 30, true);
  List _rosada        = new List.filled( 30, true);
  List _mostaza       = new List.filled( 30, true);
  List _pina          = new List.filled( 30, true);
  List _bBQ           = new List.filled( 30, false);
  List _mayonesa      = new List.filled( 30, false);
  List _guacamole     = new List.filled( 30, false);
  List _picante       = new List.filled( 30, false);
  List _ajo           = new List.filled( 30, false);
  List _maiz          = new List.filled( 30, false);
  List _cebollaSofita = new List.filled( 30, false);
  List _cebollaCruda  = new List.filled( 30, false);

  int cantidad = 1;

  @override
  Widget build(BuildContext context) {

    
    final List producto = ModalRoute.of(context).settings.arguments;

    // final bloc = Provider.ofProducto(context);
  
    final height = MediaQuery.of(context).size.height;


    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'pedido'),
        backgroundColor: Colors.red,
        child: Icon(
          Icons.navigate_next,
          size: 50,
        ),
      ),
      
      backgroundColor: Color.fromRGBO(161, 35, 18, 1),
      body: StreamBuilder<Object>(
        stream: producto[0],
        initialData: 0,
        builder: (context, snapshot) {
          

          return SingleChildScrollView(
            child: Column(
              children: <Widget>[

                SizedBox(height: 30,),

                SizedBox( height:  height * 0.015, ),

                Center(
                  child: Text('Ingredientes', style: styleAppBar,)
                ),
                  
                SizedBox( height:  height * 0.035, ),

                Center(
                  child: Text('Tienes ${ snapshot.data } ${producto[1]}' , style: styleAppBar,)
                ),

                SizedBox( height:  height * 0.015, ),

                Center(
                  child: Text('Cuantas deseas modificar?' , style: styleAppBar,)
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    IconButton(
                      icon: Icon(Icons.remove, color: Color.fromRGBO(239 , 184, 16, 1),), 
                      onPressed: cantidad > 1  ? () => cambiarValorDeProdcuto( -1) : null
                    ),

                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width:  30,
                          height: 30,
                          child: Center(
                            child: Text('$cantidad', style: styleCantidadSubProducto,)
                          ),
                          
                          color: Colors.white,
                        ),
                      ),
                    ),

                    IconButton(
                      icon: Icon(Icons.add, color: Color.fromRGBO(239 , 184, 16, 1),), 
                      onPressed:  cantidad < snapshot.data ? () => cambiarValorDeProdcuto( 1) : null
                    )
                  ],
                ),

                SizedBox(height: 20,),

                _cardIngredientes( producto[0], producto[1] ),

                _cardSalsasCasa( producto[0], producto[1] ),

                SizedBox( height: 40,)
              ],
            ),
          );
        }
      )
    );
  }



  cambiarValorDeProdcuto(  int i  ) {

    setState( () =>  cantidad +=i );
  }




   _cardIngredientes( Stream bloc, String nombre) {

    
    List<Widget> cards = [];

    List<Widget> numCards = new List( cantidad );
  
    numCards.forEach((i){
      
      StreamBuilder streamBuilder = StreamBuilder(

        stream: bloc ,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          
          return Container(
            padding: EdgeInsets.symmetric( horizontal: 10, vertical: 20),
            width: double.infinity,
            // height: 200,
            child: Card(
              color: Color.fromRGBO(239 , 184, 16, 1),
              elevation: 10.0,
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
              child: Column(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.symmetric( vertical: 10),
                    child: Center(child: Text('Ingredientes del producto # $cantidad ', style: styleCantidadSubProducto,),)
                  ),
                    
                  _checkBoxIngredientes( producto: _ensalada, texto: 'Ensalada',index: cantidad-1),
                  _checkBoxIngredientes( producto: _ripio,    texto: 'Ripio',   index: cantidad-1),
                  _checkBoxIngredientes( producto: _salsas,   texto: 'Todas las salsas',  index: cantidad-1),
                  _checkBoxIngredientes( producto: _queso,    texto: 'Queso',   index: cantidad-1),

                  Column(
                    children: <Widget>[
                      RaisedButton(
                      child: Text('Listo', style: styleCantidadSubProducto,),
                      elevation: 0,
                      shape: StadiumBorder() ,
                      onPressed: () {
                        Navigator.pop(context);
                      }
                    ),
                    ],
                  )
                  
                ],
              ),
            ),
          );

          
        },
        
      );

      
      
      cards.add(streamBuilder);

    });

    return cards[cantidad-1];
  }



  Widget _checkBoxIngredientes ({ List producto, String texto, int index }) {
    
    final bloc = Providers.ofPerrosIngredientes(context);

    return CheckboxListTile(
      activeColor: Colors.white,
      checkColor: Color.fromRGBO(161, 35, 18, 1),
      value: producto[ index ], 
      title: Text( texto, style: styleCantidadSubProducto, ),
      onChanged: (valor) {

        setState(() {
          
          _ensalada[index] = texto == 'Ensalada' ? valor : _ensalada[index];
          _ripio[index]    = texto == 'Ripio'    ? valor : _ripio[index];
          _salsas[index]   = texto == 'Todas las salsas'   ? valor : _salsas[index];
          _queso[index]    = texto == 'Queso'    ? valor : _queso[index];

          
          bloc.ensaladaControllerCantidad( _ensalada );
          bloc.ripioControllerCantidad(    _ripio    );
          bloc.salsasControllerCantidad(   _salsas   );
          bloc.quesoControllerCantidad(    _queso    );

        });
      }
    );
  }



  _cardSalsasCasa(Stream bloc, String nombre) {

    StreamBuilder streamBuilder = StreamBuilder(
      stream: bloc ,
      builder: (BuildContext context, AsyncSnapshot snapshot){

        return Container(
            padding: EdgeInsets.symmetric( horizontal: 10, vertical: 20),
            width: double.infinity,
            // height: 200,
            child: Card(
              color: Color.fromRGBO(239 , 184, 16, 1),
              elevation: 10.0,
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
              child: Column(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.symmetric( vertical: 10),
                    child: Center(child: Text('Salsas del producto # $cantidad ', style: styleCantidadSubProducto,),)
                  ),
                    
                  _checkBoxSalsas( producto: _roja,          texto: 'Roja',            index: cantidad-1),
                  _checkBoxSalsas( producto: _rosada,        texto: 'Rosada',          index: cantidad-1),
                  _checkBoxSalsas( producto: _mostaza,       texto: 'Mostaza',         index: cantidad-1),
                  _checkBoxSalsas( producto: _bBQ,           texto: 'BBQ',             index: cantidad-1),
                  _checkBoxSalsas( producto: _pina,          texto: 'Pina',            index: cantidad-1),
                  _checkBoxSalsas( producto: _mayonesa,      texto: 'Mayonesa',        index: cantidad-1),
                  _checkBoxSalsas( producto: _guacamole,     texto: 'Guacamole',       index: cantidad-1),
                  _checkBoxSalsas( producto: _picante,       texto: 'Picante',         index: cantidad-1),
                  _checkBoxSalsas( producto: _ajo,           texto: 'Ajo',             index: cantidad-1),
                  _checkBoxSalsas( producto: _maiz,          texto: 'Maíz',            index: cantidad-1),
                  _checkBoxSalsas( producto: _cebollaSofita, texto: 'Cebolla Sofrita', index: cantidad-1),
                  _checkBoxSalsas( producto: _cebollaCruda,  texto: 'Cebolla Cruda',   index: cantidad-1),

                  
                ],
              ),
            ),
          );
      },
    );

    return _salsas[cantidad-1] == false ? streamBuilder : Container();
  }


  Widget _checkBoxSalsas ({ List producto, String texto, int index }) {
    
    final bloc = Providers.ofPerrosIngredientes(context);

    return CheckboxListTile(
      activeColor: Colors.white,
      checkColor: Color.fromRGBO(161, 35, 18, 1),
      value: producto[ index ], 
      title: Text( texto, style: styleCantidadSubProducto, ),
      onChanged: (valor) {

        setState(() {
          
          _roja[index]          = texto == 'Roja'            ? valor : _roja[index];
          _rosada[index]        = texto == 'Rosada'          ? valor : _rosada[index];
          _mostaza[index]       = texto == 'Mostaza'         ? valor : _mostaza[index];
          _bBQ[index]           = texto == 'BBQ'             ? valor : _bBQ[index];
          _pina[index]          = texto == 'Piña'            ? valor : _pina[index];
          _mayonesa[index]      = texto == 'Mayonesa'        ? valor : _mayonesa[index];
          _guacamole[index]     = texto == 'Guacamole'       ? valor : _guacamole[index];
          _picante[index]       = texto == 'Picante'         ? valor : _picante[index];
          _ajo[index]           = texto == 'Ajo'             ? valor : _ajo[index];
          _maiz[index]          = texto == 'Maíz'            ? valor : _maiz[index];
          _cebollaSofita[index] = texto == 'Cebolla Sofrita' ? valor : _cebollaSofita[index];
          _cebollaCruda[index]  = texto == 'Cebolla Cruda'   ? valor : _cebollaCruda[index];

          
          bloc.rojaControllerCantidad(      _roja     );
          bloc.rosadaControllerCantidad(    _rosada   );
          bloc.mostazaControllerCantidad(   _mostaza  );
          bloc.bBQControllerCantidad(       _bBQ      );
          bloc.pinaControllerCantidad(      _pina     );
          bloc.mayonesaControllerCantidad(  _mayonesa );
          bloc.guacamoleControllerCantidad( _guacamole);
          bloc.picanteControllerCantidad(   _picante  );
          bloc.ajoControllerCantidad(       _ajo      );
          bloc.maizControllerCantidad(      _maiz     );

          bloc.cebollaSofritaControllerCantidad( _cebollaSofita );
          bloc.cebollaCrudaControllerCantidad(   _cebollaCruda  );

        });
      }
    );
  }
}