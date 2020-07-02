import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q2/src/bloc/producto_bloc.dart';
// import 'package:q2/src/bloc/producto_bloc.dart';
import 'package:q2/src/bloc/provider.dart';
import 'package:q2/src/service/database.dart';
import 'package:q2/src/service/lista_hamburgesas_provider.dart';

class ConfirmacionDomicilio extends StatefulWidget {
  final bool infoExeso2;
  ConfirmacionDomicilio({this.infoExeso2});

  @override
  _ConfirmacionDomicilioState createState() => _ConfirmacionDomicilioState();
}

class _ConfirmacionDomicilioState extends State<ConfirmacionDomicilio> {
  final TextStyle styleAppBar = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, );

  ListaHamburguesas listaHamburgesas = ListaHamburguesas();

  ProductoBloc data = ProductoBloc();

  int i = 0;
  
  @override
  Widget build(BuildContext context) {

    this.listaHamburgesas = Provider.of<ListaHamburguesas>(context);

    this.data = Providers.ofProducto(context);

    // color:  Color.fromRGBO(161, 35, 18, 1)
    ProductoBloc dataProduc = ProductoBloc();
    
    final dataForm = Providers.of(context);
    dataProduc = Providers.ofProducto(context);

    double valor = ( 
      (dataProduc.especial              * 9.000)  + 
      (dataProduc.superEspecial         * 12.500) +
      (dataProduc.trisuper              * 14.500) +
      (dataProduc.perroGrandeTocineta   * 9.000)  +
      (dataProduc.perroGrande           * 7.500)  +
      (dataProduc.perroPequegnoTocineta * 8.000)  +
      (dataProduc.perroPequegno         * 6.500)  +
      (dataProduc.grandePerra           * 10.500) +
      (dataProduc.pequegnaPerra         * 8.500)  
    );

    bool exesoInfo = (
      (dataProduc.especial              ?? 0) > 0 &&
      (dataProduc.superEspecial         ?? 0) > 0 &&
      (dataProduc.trisuper              ?? 0) > 0 &&
      (dataProduc.perroGrandeTocineta   ?? 0) > 0 &&
      (dataProduc.perroGrande           ?? 0) > 0 &&
      (dataProduc.perroPequegnoTocineta ?? 0) > 0 &&
      (dataProduc.perroPequegno         ?? 0) > 0 &&
      (dataProduc.grandePerra           ?? 0) > 0 &&
      (dataProduc.pequegnaPerra         ?? 0) > 0 
    );

    bool exsesoInfo2 = i > 7;

    _mostrarFactura() {

      return Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          SizedBox(height: 20,),

          Row(
            children: <Widget>[
              SizedBox(width: 20,),
              Text('Q2 ${dataForm.municipio}', style: styleAppBar,),
            ],
          ),

          Row(
            children: <Widget>[
              SizedBox(width: 20,),
              Text('A nombre de: ${dataForm.nombre}', style: styleAppBar),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 20,),
              Text('Número de tfl: ${dataForm.telefono}', style: styleAppBar),
            ],
          ),


          SizedBox(height: 15,),

          Row(
            children: <Widget>[
              SizedBox(width: MediaQuery.of(context).size.width * 0.3,),
              Text('Has Pedido', style: styleAppBar),
            ],
          ),

          SizedBox(height: 15,),

          _infoProducto(dataProduc.especial, 'Especial'),


          _infoProducto(dataProduc.superEspecial, 'Super'),


          _infoProducto(dataProduc.trisuper, 'Trisuper'),


          _infoProducto(dataProduc.perroGrandeTocineta, 'Perro grande con tocineta'),


          _infoProducto(dataProduc.perroGrande, 'Perro grande'),


          _infoProducto(dataProduc.perroPequegnoTocineta, 'Perro pequeño con tocineta'),  


          _infoProducto(dataProduc.perroPequegno, 'Perro pequeño'),

          
          _infoProducto(dataProduc.grandePerra, 'Perra grande'),


          _infoProducto(dataProduc.pequegnaPerra, 'Perra pequeña'),

          SizedBox(height: 15,),

          Row(
            children: <Widget>[
              SizedBox(width: MediaQuery.of(context).size.width * 0.24,),
              Text('Especificaciones', style: styleAppBar),
            ],
          ),

          SizedBox(height: 15,),

        // Especiales 
          data.especial >= 1 ?  _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [0],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [0],
            ripio   : listaHamburgesas.especialIngredienteRipio     [0],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [0],
            queso   : listaHamburgesas.especialIngredienteQueso     [0],      
            producto: 'Especial # 1'
          ) : Container(),

          data.especial >= 1 ? _mostrarAdicion(
            carne:    listaHamburgesas.especialAdicionCarne   [0],
            tocineta: listaHamburgesas.especialAdicionTocineta[0],
            queso:    listaHamburgesas.especialAdicionQueso   [0],
            ensalada: listaHamburgesas.especialAdicionEnsalada[0],
            numeroDeHamburguesa: 1
          ) : Container(),


          data.especial >= 2 ? _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [1],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [1],
            ripio   : listaHamburgesas.especialIngredienteRipio     [1],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [1],
            queso   : listaHamburgesas.especialIngredienteQueso     [1],      
            producto: 'Especial # 2'
          ) : Container(),

          data.especial >= 2 ? _mostrarAdicion(
            carne:    listaHamburgesas.especialAdicionCarne   [1],
            tocineta: listaHamburgesas.especialAdicionTocineta[1],
            queso:    listaHamburgesas.especialAdicionQueso   [1],
            ensalada: listaHamburgesas.especialAdicionEnsalada[1],
            numeroDeHamburguesa: 2
          ) : Container(),

          data.especial >= 3 ? _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [2],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [2],
            ripio   : listaHamburgesas.especialIngredienteRipio     [2],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [2],
            queso   : listaHamburgesas.especialIngredienteQueso     [2],      
            producto: 'Especial # 3'
          ) : Container(),

          data.especial >= 4 ? _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [3],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [3],
            ripio   : listaHamburgesas.especialIngredienteRipio     [3],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [3],
            queso   : listaHamburgesas.especialIngredienteQueso     [3],      
            producto: 'Especial # 4'
          ): Container(),

          data.especial >= 5 ? _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [4],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [4],
            ripio   : listaHamburgesas.especialIngredienteRipio     [4],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [4],
            queso   : listaHamburgesas.especialIngredienteQueso     [4],      
            producto: 'Especial # 5'
          ) : Container(),

          data.especial >= 6 ? _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [5],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [5],
            ripio   : listaHamburgesas.especialIngredienteRipio     [5],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [5],
            queso   : listaHamburgesas.especialIngredienteQueso     [5],      
            producto: 'Especial # 6'
          ) : Container(),

          data.especial >= 7 ? _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [6],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [6],
            ripio   : listaHamburgesas.especialIngredienteRipio     [6],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [6],
            queso   : listaHamburgesas.especialIngredienteQueso     [6],      
            producto: 'Especial # 7'
          ) : Container(),

          data.especial >= 8 ? _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [7],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [7],
            ripio   : listaHamburgesas.especialIngredienteRipio     [7],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [7],
            queso   : listaHamburgesas.especialIngredienteQueso     [7],      
            producto: 'Especial # 8'
          ) : Container(),

          data.especial >= 9 ? _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [8],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [8],
            ripio   : listaHamburgesas.especialIngredienteRipio     [8],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [8],
            queso   : listaHamburgesas.especialIngredienteQueso     [8],      
            producto: 'Especial # 9'
          ) : Container(),

          data.especial >= 10 ? _infoIngredientes(
            tomate  : listaHamburgesas.especialIngredienteTomate    [9],
            ensalada: listaHamburgesas.especialIngredienteEnsalada  [9],
            ripio   : listaHamburgesas.especialIngredienteRipio     [9],
            tocineta: listaHamburgesas.especialIngredienteTocineta  [9],
            queso   : listaHamburgesas.especialIngredienteQueso     [9],      
            producto: 'Especial # 10'
          ) : Container(),

        // Super



          SizedBox(height: 30,),

          // exesoInfo || exsesoInfo2 ? Container() : Expanded(
          //   // flex: ,
          //   child: Container()
          // ),

          Container(
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(255, 105, 97, 0.5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Text('Total', style: styleAppBar,),

                  Text( '${valor.toStringAsFixed(3)}' , style: styleAppBar,)
                ],
              ),
            ),
          )
        ],
      );
    }

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
      
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 80),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              // height: double.infinity,
              width: double.infinity,
              // child: exesoInfo || exsesoInfo2 ? SingleChildScrollView(
              //   child: _mostrarFactura()
              // ) : _mostrarFactura()
              child: SingleChildScrollView(
                child: _mostrarFactura(),
              ),
            ),
          ),
        ),
      )
    );
  }

  _padding(){

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: <Widget>[
          Divider(
            thickness: 2,
            color: Color.fromRGBO(161, 35, 18, 1),
          ),

          
          SizedBox(height: 5,),
        ],
      ),
    );
  }

  _infoProducto(int dataProduc, String producto ) {
    
    return dataProduc == 0 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          Container(height: 1,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              dataProduc > 0 ? Text(  producto, style: styleAppBar) : Container(),
              dataProduc > 0 ? Text(' $dataProduc', style: styleAppBar) : Container()
            ],
          ),

          dataProduc > 0 ? _padding() : Container(),

          Container(height: 1,)

        ],
      ),
    );
  }

  _infoIngredienteTomate(int dataProduc, String producto,  ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          dataProduc != 2 ? _contador() : null,
          
          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Text(  producto, style: styleAppBar) ,
              Text('Nada de tomate', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Poco tomate', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Normal de tomate', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Extra de tomate', style: styleAppBar),
            ],
          ) : Container(), 

          

        ],
      ),
    );
  }

  _infoIngredienteEnsalada(int dataProduc, String producto,  ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          dataProduc != 2 ? _contador() : null,
          
          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Text(  producto, style: styleAppBar) ,
              Text('Nada de Ensalada', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Poca Ensalada', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Normal', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Extra de Ensalada', style: styleAppBar),
            ],
          ) : Container(), 

        ],
      ),
    );
  }

  _infoIngredienteRipio(int dataProduc, String producto,  ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          dataProduc != 2 ? _contador() : null,
          
          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Text(  producto, style: styleAppBar) ,
              Text('Nada de ripio', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Poco ripio', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Normal', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Extra de ripio', style: styleAppBar),
            ],
          ) : Container(), 

        ],
      ),
    );
  }

  _infoIngredienteTocineta(int dataProduc, String producto,  ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          dataProduc != 2 ? _contador() : null,
          
          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Text(  producto, style: styleAppBar) ,
              Text('Nada de tocineta', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Poca tocineta', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Normal', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Extra tocineta', style: styleAppBar),
            ],
          ) : Container(), 

        ],
      ),
    );
  }

  _infoIngredienteQueso(int dataProduc, String producto,  ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          dataProduc != 2 ? _contador() : null,
          
          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Text(  producto, style: styleAppBar) ,
              Text('Nada queso', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Poco queso', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Normal', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(  producto, style: styleAppBar) ,
              Text('Extra queso', style: styleAppBar),
            ],
          ) : Container(), 

        ],
      ),
    );
  }



  _infoIngredientes({ int tomate, int ensalada, int ripio, int tocineta, int queso, String producto}){

    return Column(
      children: <Widget>[

        tomate    == 2 ? Container() : _infoIngredienteTomate(   tomate,   producto),
        ensalada  == 2 ? Container() : _infoIngredienteEnsalada( ensalada, producto),
        ripio     == 2 ? Container() : _infoIngredienteRipio(    ripio,    producto),
        tocineta  == 2 ? Container() : _infoIngredienteTocineta( tocineta, producto),
        queso     == 2 ? Container() : _infoIngredienteQueso(    queso,    producto),

        tomate != 2 || ensalada != 2 || ripio != 2 || tocineta != 2 || queso != 2 ? Divider() : Container(),

        

      ]
    );
  }

  _contador(){
    this.i++;
    return Container();
  }


  _mostrarAdicion({ int carne, int tocineta, int queso, int ensalada, int numeroDeHamburguesa }) {

    return Column(
      children: <Widget>[

        _infoAdicion( adicion: carne,     producto: '--Ad Carne # $numeroDeHamburguesa'),
        _infoAdicion( adicion: tocineta,  producto: '--Ad Tocineta # $numeroDeHamburguesa'),
        _infoAdicion( adicion: queso,     producto: '--Ad Queso # $numeroDeHamburguesa'),
        _infoAdicion( adicion: ensalada,  producto: '--Ad Ensalada # $numeroDeHamburguesa'),

        carne > 0 || tocineta > 0 || queso > 0 || ensalada > 0 ? Divider() : Container()
      ],
    );
  }


  _infoAdicion( {int adicion, String producto,}  ) {
    
    return adicion == 0 ? Container() : 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          adicion > 0 ? _contador() : null,
          
          adicion > 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Text(  producto, style: styleAppBar) ,
              // Text('Adición Queso', style: styleAppBar),
              Text('$adicion', style: styleAppBar),
            ],
          ) 
          : Container(), 

          
          
        ],
      ),
    );
  }
}