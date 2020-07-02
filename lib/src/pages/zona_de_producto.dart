import 'package:flutter/material.dart';
import 'package:q2/src/bloc/provider.dart';
import 'package:q2/src/service/authservice.dart';
import 'package:q2/src/widgets/fondo_productos_painter.dart';

final TextStyle styleProducto            = TextStyle( fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
final TextStyle styleSubProducto         = TextStyle( fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
final TextStyle stylePrecioSubProducto   = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
final TextStyle styleSubTitleProducto    = TextStyle( fontSize: 10, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.red );
final TextStyle styleCantidadSubProducto = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Color.fromRGBO(161, 35, 18, 1) );
final TextStyle styleCantidad            = TextStyle( fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic );
final TextStyle styleAppBar              = TextStyle( fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color:  Color.fromRGBO(161, 35, 18, 1));

// hamburgesa
List<int> especial      = [1, 0];
List<int> superespecial = [2, 0];
List<int> trisuper      = [3, 0];
// perro
List<int> perroGrandeTocineta    = [4, 0];
List<int> perroGrande            = [5, 0];
List<int> perroPequegnoTocineta  = [6, 0];
List<int> perroPequegno          = [7, 0];
// perra
List<int> grandePerra   = [8, 0];
List<int> pequegnaPerra = [9, 0];



class HeaderProductos extends StatefulWidget {
  @override
  _HeaderProductosState createState() => _HeaderProductosState();
}

class _HeaderProductosState extends State<HeaderProductos> {

  

  @override
  Widget build(BuildContext context) {

    final size   = MediaQuery.of(context).size;
    final height = size.height;
    
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'pedido');
        },
        // backgroundColor: Colors.red,
        backgroundColor: Color.fromRGBO(239 , 184, 16, 1),
        child: Icon(
          Icons.navigate_next,
          size: 50,
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.,
      
      // backgroundColor: Color.fromRGBO(161, 35, 18, 1),
      backgroundColor: Color.fromRGBO(238, 241, 249, 1),
        body: SingleChildScrollView(
        child: CustomPaint(
          painter: HeaderProductosPainter(),
          child: Column(
            children: <Widget>[

              // 
              // Hamburgesa
              // 
              SizedBox( height:  height * 0.05, ),

              ListTile(
                title:  Row(
                  children: <Widget>[
                    SizedBox(width: 50,),
                    Text('Menú', style: styleAppBar,),
                  ],
                ),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios), 
                  onPressed: () {
                    AuthService().signOut();
                  }
                ),
              ),
              // Center(
              //   child: Text('Menú', style: styleAppBar,)
              // ),
              SizedBox( height:  height * 0.05, ),
              producto( 'Hamburguesa'),

              // SizedBox( height: height * 0.001,),
              subProducto(context, 'Especial', '9.000', 'Carne, Queso, tocineta, Tomate, Ensalada, ripio', producto: especial) ,

              SizedBox( height: height * 0.015,),
              subProducto(context, 'Super', '12.500', '2 Carne, 2 Queso, 2 tocineta, Tomate, Ensalada, ripio', producto: superespecial),

              SizedBox( height: height * 0.015,),
              subProducto(context, 'Trisuper', '14.500', '3 Carne, 3 Queso, 3 tocineta, Tomate, Ensalada, ripio', producto: trisuper),
              

              //
              // Perros
              // 
              SizedBox( height: height * 0.02,),
              producto( 'Perros '),

              // SizedBox( height: height * 0.015,),
              subProducto(context, 'Grande con tocineta', '9.000', 'Salchicha, queso, tocineta, ensalada, ripio', producto: perroGrandeTocineta),

              SizedBox( height: height * 0.015,),
              subProducto(context, 'Grande', '7.500', 'Salchicha, queso, ensalada, ripio', producto: perroGrande),

              SizedBox( height: height * 0.015,),
              subProducto(context, 'Pequeño con tocineta', '8.000', 'Salchicha, queso, tocineta, ensalada, ripio', producto: perroPequegnoTocineta),

              SizedBox( height: height * 0.015,),
              subProducto(context, 'Pequeño', '6.500', 'Salchicha, queso, ensalada, ripio', producto: perroPequegno),


              // 
              // Perra
              // 
              SizedBox( height: height * 0.02,),
              producto('Perras'),

              // SizedBox( height: height * 0.015,),s
              subProducto(context, 'Grande', '10.500', 'Queso, 4 tocinetas, ensalada, ripio', producto: grandePerra ),
              
              SizedBox( height: height * 0.015,),
              subProducto(context, 'Pequeña', '8.500', 'Queso, 3 tocinetas, ensalada, ripio', producto: pequegnaPerra),

              SizedBox( height: 90,)
            ],
          )
        ),
      ),
    );
  }

  Widget producto( String producto ) {

    return ListTile( 
      contentPadding: EdgeInsets.symmetric( horizontal: 30) ,
      title: Text( producto, style: styleProducto,),
    );
  }

  Widget subProducto( BuildContext context, String subProducto, String precio, String descripcion, { List<int> producto} ){

    return Column(
      children: <Widget>[

        ListTile( 
          contentPadding: EdgeInsets.symmetric( horizontal: 30 ) ,
          title: Text( subProducto, style: styleSubProducto,),
          
          trailing: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width:  70,
              height: 30,
              child: Center(child: Text( precio, style: stylePrecioSubProducto,)),
              color: Colors.white,
            ),
          ),
          subtitle: Text( descripcion, style: styleSubTitleProducto,),
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
                  highlightColor: Colors.white,
                  icon: Icon(Icons.remove, color: Color.fromRGBO(161, 35, 18, 1),), 
                  onPressed: producto[1] > 0 ? () => cambiarValorDeProdcuto(producto, -1) : null
              
                ),
              ),

              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width:  30,
                    height: 30,
                    child: Center(
                      child: validarTexto(producto)
                    ),
                    
                    color: Colors.white,
                  ),
                ),
              ),
              
              SizedBox(
                height: 40,
                child: IconButton(
                  icon: Icon(Icons.add, color:  Color.fromRGBO(161, 35, 18, 1),), 
                //   onPressed: producto[1] < 10 ? (){
                //   setState(() {
                    

                //     producto[1] +=1;
                    
                //   });
                onPressed: producto[1] < 10 ? () => cambiarValorDeProdcuto(producto, 1) : null
                // }) : null;,
                )
              ),
              SizedBox( width: 15,)
              
            ],
          ),
        )

      ],
    );
  
  }



  cambiarValorDeProdcuto( producto, int i  ) {

    setState(() {
      
      return producto[1] +=i;
      
    });

  }



  validarTexto( producto ) {

    
    final bloc = Providers.ofProducto(context);


    if ( producto[0] == 1) {
      bloc.cantidadEspecial( especial[1] );
      return Text( '${especial[1]}', style: styleCantidadSubProducto,);

    } else if ( producto[0] == 2 ) {
      bloc.cantidadSuper( superespecial[1] );
      return Text( '${superespecial[1]}', style: styleCantidadSubProducto,);

    } else if ( producto[0] == 3 ){
      bloc.cantidadTrisuper( trisuper[1] );
      return Text( '${trisuper[1]}', style: styleCantidadSubProducto,);

    } else if( producto[0] == 4 ) {
      bloc.cantidadPerroGrandeTocineta( perroGrandeTocineta[1] );
      return Text( '${perroGrandeTocineta[1]}', style: styleCantidadSubProducto,);

    } else if ( producto[0] == 5 ) {
      bloc.cantidadPerroGrande( perroGrande[1] );
      return Text( '${perroGrande[1]}', style: styleCantidadSubProducto,);

    } else if ( producto[0] == 6 ){
      bloc.cantidadPerroPequegnoTocineta( perroPequegnoTocineta[1] );
      return Text( '${perroPequegnoTocineta[1]}', style: styleCantidadSubProducto,);

    } else if ( producto[0] == 7 ){
      bloc.cantidadPerroPequegno( perroPequegno[1] );
      return Text( '${perroPequegno[1]}', style: styleCantidadSubProducto,);
    
    } else if ( producto[0] == 8 ){
      bloc.cantidadGrandePerra( grandePerra[1] );
      return Text( '${grandePerra[1]}', style: styleCantidadSubProducto,);

    } else if ( producto[0] == 9 ){
      bloc.cantidadEPequegnaPerra( pequegnaPerra[1] );
      return Text( '${pequegnaPerra[1]}', style: styleCantidadSubProducto,);

    }
  }

}

