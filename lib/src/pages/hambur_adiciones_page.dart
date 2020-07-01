import 'package:flutter/material.dart';


class HamburguesaAdicionesPage extends StatefulWidget {

  @override
  _HamburguesaAdicionesPageState createState() => _HamburguesaAdicionesPageState();
}

class _HamburguesaAdicionesPageState extends State<HamburguesaAdicionesPage> {

  final TextStyle styleProducto            = TextStyle( fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleSubProducto         = TextStyle( fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle stylePrecioSubProducto   = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleSubTitleProducto    = TextStyle( fontSize: 10, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.red );
  final TextStyle styleCantidadSubProducto = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(161, 35, 18, 1) );
  final TextStyle styleCantidad            = TextStyle( fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
  final TextStyle styleAppBar              = TextStyle( fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(239 , 184, 16, 1));

  List<int> carne    = new List.filled(30, 0);
  List<int> tocineta = new List.filled(30, 0);
  List<int> queso    = new List.filled(30, 0); 
  List<int> ensalada = new List.filled(30, 0);

  int cantidad = 1;

  @override
  Widget build(BuildContext context) {

    final List producto = ModalRoute.of(context).settings.arguments;

    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(161, 35, 18, 1),
      body: StreamBuilder(
        stream: producto[0],
        initialData: 0,
        builder: (context, snapshot) {

          return SingleChildScrollView(
            child: Column(
              children: <Widget>[

                SizedBox(height: 30,),

                SizedBox( height:  height * 0.015, ),

                Center(
                  child: Text('Adiciones', style: styleAppBar,)
                ),
                  
                SizedBox( height:  height * 0.035, ),

                Center(
                  child: Text('Tienes ${ snapshot.data } ${ producto[1] }' , style: styleAppBar,)
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
                      onPressed: cantidad > 1  ? () => cambiarValorDeCantidad( -1) : null
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
                      onPressed:  cantidad < snapshot.data ? () => cambiarValorDeCantidad( 1) : null
                    ),

                  ],
                ),

                _cardAdiciones( bloc: producto[0], nombre: producto[1])
              ],
            ),
          );
        }
      )
   );
  }

  cambiarValorDeCantidad(  int i  ) {

    setState( () =>  cantidad +=i );
  }



  Widget _cardAdiciones({ Stream bloc, String nombre }) {

    
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
                    child: Center(child: Text('Adiciones del producto # $cantidad ', style: styleCantidadSubProducto,),)
                  ),
                    
                  _adicones(context, adicion: 'Carne',    precio: '4.000', producto: carne,    index: cantidad-1 ),
                  _adicones(context, adicion: 'Tocineta', precio: '2.500', producto: tocineta, index: cantidad-1 ),
                  _adicones(context, adicion: 'Queso',    precio: '3.000', producto: queso,    index: cantidad-1 ),
                  _adicones(context, adicion: 'Ensalada', precio: '2.500', producto: ensalada, index: cantidad-1 ),

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



  Widget _adicones( BuildContext context, { String adicion, String precio,  List<int> producto, int index } ){

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
                      
                      producto[1] > 0 ? producto[1] -- : producto[1] = producto[1];

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
                      child: validarTexto( adicion: adicion, index: cantidad-1)
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
                    

                     carne[index] = adicion == 'Carne' ? carne[1] ++ : carne[index] = carne[index];

                     print(carne);
                    
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
      
      return Text( '${carne[index]}', style: styleCantidadSubProducto,);

    } else if ( adicion == 'Tocineta' ) {
      
      return Text( '${tocineta[index]}', style: styleCantidadSubProducto,);

    } else if ( adicion == 'Queso' ){
      
      return Text( '${queso[index]}', style: styleCantidadSubProducto,);

    } else if( adicion == 'Ensalada' ) {
      
      return Text( '${ensalada[index]}', style: styleCantidadSubProducto,);

    }
  }
}