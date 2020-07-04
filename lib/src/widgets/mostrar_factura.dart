import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q2/src/bloc/login_bloc.dart';
import 'package:q2/src/bloc/producto_bloc.dart';
import 'package:q2/src/bloc/provider.dart';
import 'package:q2/src/providers/lista_hamburgesas_provider.dart';

class ImportarFactura extends StatefulWidget {

  @override
  _ImportarFacturaState createState() => _ImportarFacturaState();
}

class _ImportarFacturaState extends State<ImportarFactura> {

  final TextStyle styleAppBar = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, );

  ListaHamburguesas listaHamburgesas  = ListaHamburguesas();
  ProductoBloc      dataProduc        = ProductoBloc();
  ProductoBloc      data              = ProductoBloc();
  LoginBloc         dataForm          = LoginBloc();

  int i = 0;

  @override
  Widget build(BuildContext context) {

    this.listaHamburgesas = Provider.of<ListaHamburguesas>(context);
    this.data             = Providers.ofProducto(context);
    this.dataForm         = Providers.of(context);
    this.dataProduc       = Providers.ofProducto(context);

    double valor = ( 
      (dataProduc.especial              * 9.000)  + 
        // Adicion Carne
        (dataProduc.especial >= 1 ? (listaHamburgesas.especialAdicionCarne[0]) * 4.000 : 0 ) +
        (dataProduc.especial >= 2 ? (listaHamburgesas.especialAdicionCarne[1]) * 4.000 : 0 ) +
        (dataProduc.especial >= 3 ? (listaHamburgesas.especialAdicionCarne[2]) * 4.000 : 0 ) +
        (dataProduc.especial >= 4 ? (listaHamburgesas.especialAdicionCarne[3]) * 4.000 : 0 ) +
        (dataProduc.especial >= 5 ? (listaHamburgesas.especialAdicionCarne[4]) * 4.000 : 0 ) +
        (dataProduc.especial >= 6 ? (listaHamburgesas.especialAdicionCarne[5]) * 4.000 : 0 ) +
        (dataProduc.especial >= 7 ? (listaHamburgesas.especialAdicionCarne[6]) * 4.000 : 0 ) +
        (dataProduc.especial >= 8 ? (listaHamburgesas.especialAdicionCarne[7]) * 4.000 : 0 ) +
        (dataProduc.especial >= 9 ? (listaHamburgesas.especialAdicionCarne[8]) * 4.000 : 0 ) +
        (dataProduc.especial >= 10 ? (listaHamburgesas.especialAdicionCarne[9]) * 4.000 : 0 ) +
        // Adicion Queso
        (dataProduc.especial >= 1 ? (listaHamburgesas.especialAdicionQueso[0]) * 3.000 : 0 ) +
        (dataProduc.especial >= 2 ? (listaHamburgesas.especialAdicionQueso[1]) * 3.000 : 0 ) +
        (dataProduc.especial >= 3 ? (listaHamburgesas.especialAdicionQueso[2]) * 3.000 : 0 ) +
        (dataProduc.especial >= 4 ? (listaHamburgesas.especialAdicionQueso[3]) * 3.000 : 0 ) +
        (dataProduc.especial >= 5 ? (listaHamburgesas.especialAdicionQueso[4]) * 3.000 : 0 ) +
        (dataProduc.especial >= 6 ? (listaHamburgesas.especialAdicionQueso[5]) * 3.000 : 0 ) +
        (dataProduc.especial >= 7 ? (listaHamburgesas.especialAdicionQueso[6]) * 3.000 : 0 ) +
        (dataProduc.especial >= 8 ? (listaHamburgesas.especialAdicionQueso[7]) * 3.000 : 0 ) +
        (dataProduc.especial >= 9 ? (listaHamburgesas.especialAdicionQueso[8]) * 3.000 : 0 ) +
        (dataProduc.especial >= 10 ? (listaHamburgesas.especialAdicionQueso[9]) * 3.000 : 0 ) +
        // Adicion Tocineta
        (dataProduc.especial >= 1 ? (listaHamburgesas.especialAdicionTocineta[0]) *2.500 : 0 ) +
        (dataProduc.especial >= 2 ? (listaHamburgesas.especialAdicionTocineta[1]) *2.500 : 0 ) +
        (dataProduc.especial >= 3 ? (listaHamburgesas.especialAdicionTocineta[2]) *2.500 : 0 ) +
        (dataProduc.especial >= 4 ? (listaHamburgesas.especialAdicionTocineta[3]) *2.500 : 0 ) +
        (dataProduc.especial >= 5 ? (listaHamburgesas.especialAdicionTocineta[4]) *2.500 : 0 ) +
        (dataProduc.especial >= 6 ? (listaHamburgesas.especialAdicionTocineta[5]) *2.500 : 0 ) +
        (dataProduc.especial >= 7 ? (listaHamburgesas.especialAdicionTocineta[6]) *2.500 : 0 ) +
        (dataProduc.especial >= 8 ? (listaHamburgesas.especialAdicionTocineta[7]) *2.500 : 0 ) +
        (dataProduc.especial >= 9 ? (listaHamburgesas.especialAdicionTocineta[8]) *2.500 : 0 ) +
        (dataProduc.especial >= 10 ? (listaHamburgesas.especialAdicionTocineta[9]) *2.500 : 0 ) +
        // Adicion Ensalada
        (dataProduc.especial >= 1 ? (listaHamburgesas.especialAdicionEnsalada[0]) * 2.500 : 0 ) +
        (dataProduc.especial >= 2 ? (listaHamburgesas.especialAdicionEnsalada[1]) * 2.500 : 0 ) +
        (dataProduc.especial >= 3 ? (listaHamburgesas.especialAdicionEnsalada[2]) * 2.500 : 0 ) +
        (dataProduc.especial >= 4 ? (listaHamburgesas.especialAdicionEnsalada[3]) * 2.500 : 0 ) +
        (dataProduc.especial >= 5 ? (listaHamburgesas.especialAdicionEnsalada[4]) * 2.500 : 0 ) +
        (dataProduc.especial >= 6 ? (listaHamburgesas.especialAdicionEnsalada[5]) * 2.500 : 0 ) +
        (dataProduc.especial >= 7 ? (listaHamburgesas.especialAdicionEnsalada[6]) * 2.500 : 0 ) +
        (dataProduc.especial >= 8 ? (listaHamburgesas.especialAdicionEnsalada[7]) * 2.500 : 0 ) +
        (dataProduc.especial >= 9 ? (listaHamburgesas.especialAdicionEnsalada[8]) * 2.500 : 0 ) +
        (dataProduc.especial >= 10 ? (listaHamburgesas.especialAdicionEnsalada[9]) * 2.500 : 0 ) +

      (dataProduc.superEspecial         * 12.500) +
        // Adicion Carne
        (dataProduc.superEspecial >= 1 ? (listaHamburgesas.superAdicionCarne[0]) * 4.000 : 0 ) +
        (dataProduc.superEspecial >= 2 ? (listaHamburgesas.superAdicionCarne[1]) * 4.000 : 0 ) +
        (dataProduc.superEspecial >= 3 ? (listaHamburgesas.superAdicionCarne[2]) * 4.000 : 0 ) +
        (dataProduc.superEspecial >= 4 ? (listaHamburgesas.superAdicionCarne[3]) * 4.000 : 0 ) +
        (dataProduc.superEspecial >= 5 ? (listaHamburgesas.superAdicionCarne[4]) * 4.000 : 0 ) +
        (dataProduc.superEspecial >= 6 ? (listaHamburgesas.superAdicionCarne[5]) * 4.000 : 0 ) +
        (dataProduc.superEspecial >= 7 ? (listaHamburgesas.superAdicionCarne[6]) * 4.000 : 0 ) +
        (dataProduc.superEspecial >= 8 ? (listaHamburgesas.superAdicionCarne[7]) * 4.000 : 0 ) +
        (dataProduc.superEspecial >= 9 ? (listaHamburgesas.superAdicionCarne[8]) * 4.000 : 0 ) +
        (dataProduc.superEspecial >= 10 ? (listaHamburgesas.superAdicionCarne[9]) * 4.000 : 0 ) +
        // Adicion Queso
        (dataProduc.superEspecial >= 1 ? (listaHamburgesas.superAdicionQueso[0]) * 3.000 : 0 ) +
        (dataProduc.superEspecial >= 2 ? (listaHamburgesas.superAdicionQueso[1]) * 3.000 : 0 ) +
        (dataProduc.superEspecial >= 3 ? (listaHamburgesas.superAdicionQueso[2]) * 3.000 : 0 ) +
        (dataProduc.superEspecial >= 4 ? (listaHamburgesas.superAdicionQueso[3]) * 3.000 : 0 ) +
        (dataProduc.superEspecial >= 5 ? (listaHamburgesas.superAdicionQueso[4]) * 3.000 : 0 ) +
        (dataProduc.superEspecial >= 6 ? (listaHamburgesas.superAdicionQueso[5]) * 3.000 : 0 ) +
        (dataProduc.superEspecial >= 7 ? (listaHamburgesas.superAdicionQueso[6]) * 3.000 : 0 ) +
        (dataProduc.superEspecial >= 8 ? (listaHamburgesas.superAdicionQueso[7]) * 3.000 : 0 ) +
        (dataProduc.superEspecial >= 9 ? (listaHamburgesas.superAdicionQueso[8]) * 3.000 : 0 ) +
        (dataProduc.superEspecial >= 10 ? (listaHamburgesas.superAdicionQueso[9]) * 3.000 : 0 ) +
        // Adicion Tocineta
        (dataProduc.superEspecial >= 1 ? (listaHamburgesas.superAdicionTocineta[0]) *2.500 : 0 ) +
        (dataProduc.superEspecial >= 2 ? (listaHamburgesas.superAdicionTocineta[1]) *2.500 : 0 ) +
        (dataProduc.superEspecial >= 3 ? (listaHamburgesas.superAdicionTocineta[2]) *2.500 : 0 ) +
        (dataProduc.superEspecial >= 4 ? (listaHamburgesas.superAdicionTocineta[3]) *2.500 : 0 ) +
        (dataProduc.superEspecial >= 5 ? (listaHamburgesas.superAdicionTocineta[4]) *2.500 : 0 ) +
        (dataProduc.superEspecial >= 6 ? (listaHamburgesas.superAdicionTocineta[5]) *2.500 : 0 ) +
        (dataProduc.superEspecial >= 7 ? (listaHamburgesas.superAdicionTocineta[6]) *2.500 : 0 ) +
        (dataProduc.superEspecial >= 8 ? (listaHamburgesas.superAdicionTocineta[7]) *2.500 : 0 ) +
        (dataProduc.superEspecial >= 9 ? (listaHamburgesas.superAdicionTocineta[8]) *2.500 : 0 ) +
        (dataProduc.superEspecial >= 10 ? (listaHamburgesas.superAdicionTocineta[9]) *2.500 : 0 ) +
        // Adicion Ensalada
        (dataProduc.superEspecial >= 1 ? (listaHamburgesas.superAdicionEnsalada[0]) * 2.500 : 0 ) +
        (dataProduc.superEspecial >= 2 ? (listaHamburgesas.superAdicionEnsalada[1]) * 2.500 : 0 ) +
        (dataProduc.superEspecial >= 3 ? (listaHamburgesas.superAdicionEnsalada[2]) * 2.500 : 0 ) +
        (dataProduc.superEspecial >= 4 ? (listaHamburgesas.superAdicionEnsalada[3]) * 2.500 : 0 ) +
        (dataProduc.superEspecial >= 5 ? (listaHamburgesas.superAdicionEnsalada[4]) * 2.500 : 0 ) +
        (dataProduc.superEspecial >= 6 ? (listaHamburgesas.superAdicionEnsalada[5]) * 2.500 : 0 ) +
        (dataProduc.superEspecial >= 7 ? (listaHamburgesas.superAdicionEnsalada[6]) * 2.500 : 0 ) +
        (dataProduc.superEspecial >= 8 ? (listaHamburgesas.superAdicionEnsalada[7]) * 2.500 : 0 ) +
        (dataProduc.superEspecial >= 9 ? (listaHamburgesas.superAdicionEnsalada[8]) * 2.500 : 0 ) +
        (dataProduc.superEspecial >= 10 ? (listaHamburgesas.superAdicionEnsalada[9]) * 2.500 : 0 ) +

      (dataProduc.trisuper              * 14.500) +
      // Adicion Carne
        (dataProduc.trisuper >= 1 ? (listaHamburgesas.trisuperAdicionCarne[0]) * 4.000 : 0 ) +
        (dataProduc.trisuper >= 2 ? (listaHamburgesas.trisuperAdicionCarne[1]) * 4.000 : 0 ) +
        (dataProduc.trisuper >= 3 ? (listaHamburgesas.trisuperAdicionCarne[2]) * 4.000 : 0 ) +
        (dataProduc.trisuper >= 4 ? (listaHamburgesas.trisuperAdicionCarne[3]) * 4.000 : 0 ) +
        (dataProduc.trisuper >= 5 ? (listaHamburgesas.trisuperAdicionCarne[4]) * 4.000 : 0 ) +
        (dataProduc.trisuper >= 6 ? (listaHamburgesas.trisuperAdicionCarne[5]) * 4.000 : 0 ) +
        (dataProduc.trisuper >= 7 ? (listaHamburgesas.trisuperAdicionCarne[6]) * 4.000 : 0 ) +
        (dataProduc.trisuper >= 8 ? (listaHamburgesas.trisuperAdicionCarne[7]) * 4.000 : 0 ) +
        (dataProduc.trisuper >= 9 ? (listaHamburgesas.trisuperAdicionCarne[8]) * 4.000 : 0 ) +
        (dataProduc.trisuper >= 10 ? (listaHamburgesas.trisuperAdicionCarne[9]) * 4.000 : 0 ) +
        // Adicion Queso
        (dataProduc.trisuper >= 1 ? (listaHamburgesas.trisuperAdicionQueso[0]) * 3.000 : 0 ) +
        (dataProduc.trisuper >= 2 ? (listaHamburgesas.trisuperAdicionQueso[1]) * 3.000 : 0 ) +
        (dataProduc.trisuper >= 3 ? (listaHamburgesas.trisuperAdicionQueso[2]) * 3.000 : 0 ) +
        (dataProduc.trisuper >= 4 ? (listaHamburgesas.trisuperAdicionQueso[3]) * 3.000 : 0 ) +
        (dataProduc.trisuper >= 5 ? (listaHamburgesas.trisuperAdicionQueso[4]) * 3.000 : 0 ) +
        (dataProduc.trisuper >= 6 ? (listaHamburgesas.trisuperAdicionQueso[5]) * 3.000 : 0 ) +
        (dataProduc.trisuper >= 7 ? (listaHamburgesas.trisuperAdicionQueso[6]) * 3.000 : 0 ) +
        (dataProduc.trisuper >= 8 ? (listaHamburgesas.trisuperAdicionQueso[7]) * 3.000 : 0 ) +
        (dataProduc.trisuper >= 9 ? (listaHamburgesas.trisuperAdicionQueso[8]) * 3.000 : 0 ) +
        (dataProduc.trisuper >= 10 ? (listaHamburgesas.trisuperAdicionQueso[9]) * 3.000 : 0 ) +
        // Adicion Tocineta
        (dataProduc.trisuper >= 1 ? (listaHamburgesas.trisuperAdicionTocineta[0]) *2.500 : 0 ) +
        (dataProduc.trisuper >= 2 ? (listaHamburgesas.trisuperAdicionTocineta[1]) *2.500 : 0 ) +
        (dataProduc.trisuper >= 3 ? (listaHamburgesas.trisuperAdicionTocineta[2]) *2.500 : 0 ) +
        (dataProduc.trisuper >= 4 ? (listaHamburgesas.trisuperAdicionTocineta[3]) *2.500 : 0 ) +
        (dataProduc.trisuper >= 5 ? (listaHamburgesas.trisuperAdicionTocineta[4]) *2.500 : 0 ) +
        (dataProduc.trisuper >= 6 ? (listaHamburgesas.trisuperAdicionTocineta[5]) *2.500 : 0 ) +
        (dataProduc.trisuper >= 7 ? (listaHamburgesas.trisuperAdicionTocineta[6]) *2.500 : 0 ) +
        (dataProduc.trisuper >= 8 ? (listaHamburgesas.trisuperAdicionTocineta[7]) *2.500 : 0 ) +
        (dataProduc.trisuper >= 9 ? (listaHamburgesas.trisuperAdicionTocineta[8]) *2.500 : 0 ) +
        (dataProduc.trisuper >= 10 ? (listaHamburgesas.trisuperAdicionTocineta[9]) *2.500 : 0 ) +
        // Adicion Ensalada
        (dataProduc.trisuper >= 1 ? (listaHamburgesas.trisuperAdicionEnsalada[0]) * 2.500 : 0 ) +
        (dataProduc.trisuper >= 2 ? (listaHamburgesas.trisuperAdicionEnsalada[1]) * 2.500 : 0 ) +
        (dataProduc.trisuper >= 3 ? (listaHamburgesas.trisuperAdicionEnsalada[2]) * 2.500 : 0 ) +
        (dataProduc.trisuper >= 4 ? (listaHamburgesas.trisuperAdicionEnsalada[3]) * 2.500 : 0 ) +
        (dataProduc.trisuper >= 5 ? (listaHamburgesas.trisuperAdicionEnsalada[4]) * 2.500 : 0 ) +
        (dataProduc.trisuper >= 6 ? (listaHamburgesas.trisuperAdicionEnsalada[5]) * 2.500 : 0 ) +
        (dataProduc.trisuper >= 7 ? (listaHamburgesas.trisuperAdicionEnsalada[6]) * 2.500 : 0 ) +
        (dataProduc.trisuper >= 8 ? (listaHamburgesas.trisuperAdicionEnsalada[7]) * 2.500 : 0 ) +
        (dataProduc.trisuper >= 9 ? (listaHamburgesas.trisuperAdicionEnsalada[8]) * 2.500 : 0 ) +
        (dataProduc.trisuper >= 10 ? (listaHamburgesas.trisuperAdicionEnsalada[9]) * 2.500 : 0 ) +

      (dataProduc.perroGrandeTocineta   * 9.000)  +

      (dataProduc.perroGrande           * 7.500)  +
      
      (dataProduc.perroPequegnoTocineta * 8.000)  +
      
      (dataProduc.perroPequegno         * 6.500)  +
      
      (dataProduc.grandePerra           * 10.500) +
      
      (dataProduc.pequegnaPerra         * 8.500)  
    
    );

    return SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 80),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: Colors.white,
            ),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
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
                    numeroDeHamburguesa: 1,
                    producto: 'Especial'
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
                    numeroDeHamburguesa: 2,
                    producto: 'Especial'
                  ) : Container(),

                  data.especial >= 3 ? _infoIngredientes(
                    tomate  : listaHamburgesas.especialIngredienteTomate    [2],
                    ensalada: listaHamburgesas.especialIngredienteEnsalada  [2],
                    ripio   : listaHamburgesas.especialIngredienteRipio     [2],
                    tocineta: listaHamburgesas.especialIngredienteTocineta  [2],
                    queso   : listaHamburgesas.especialIngredienteQueso     [2],      
                    producto: 'Especial # 3'
                  ) : Container(),

                  data.especial >= 3 ? _mostrarAdicion(

                    carne:    listaHamburgesas.especialAdicionCarne   [2],
                    tocineta: listaHamburgesas.especialAdicionTocineta[2],
                    queso:    listaHamburgesas.especialAdicionQueso   [2],
                    ensalada: listaHamburgesas.especialAdicionEnsalada[2],
                    numeroDeHamburguesa: 3,
                    producto: 'Especial'
                  ) : Container(),

                  data.especial >= 4 ? _infoIngredientes(
                    tomate  : listaHamburgesas.especialIngredienteTomate    [3],
                    ensalada: listaHamburgesas.especialIngredienteEnsalada  [3],
                    ripio   : listaHamburgesas.especialIngredienteRipio     [3],
                    tocineta: listaHamburgesas.especialIngredienteTocineta  [3],
                    queso   : listaHamburgesas.especialIngredienteQueso     [3],      
                    producto: 'Especial # 4'
                  ): Container(),

                  data.especial >= 4 ? _mostrarAdicion(

                    carne:    listaHamburgesas.especialAdicionCarne   [3],
                    tocineta: listaHamburgesas.especialAdicionTocineta[3],
                    queso:    listaHamburgesas.especialAdicionQueso   [3],
                    ensalada: listaHamburgesas.especialAdicionEnsalada[3],
                    numeroDeHamburguesa: 4,
                    producto: 'Especial'
                  ) : Container(),

                  data.especial >= 5 ? _infoIngredientes(
                    tomate  : listaHamburgesas.especialIngredienteTomate    [4],
                    ensalada: listaHamburgesas.especialIngredienteEnsalada  [4],
                    ripio   : listaHamburgesas.especialIngredienteRipio     [4],
                    tocineta: listaHamburgesas.especialIngredienteTocineta  [4],
                    queso   : listaHamburgesas.especialIngredienteQueso     [4],      
                    producto: 'Especial # 5'
                  ) : Container(),

                  data.especial >= 5 ? _mostrarAdicion(

                    carne:    listaHamburgesas.especialAdicionCarne   [4],
                    tocineta: listaHamburgesas.especialAdicionTocineta[4],
                    queso:    listaHamburgesas.especialAdicionQueso   [4],
                    ensalada: listaHamburgesas.especialAdicionEnsalada[4],
                    numeroDeHamburguesa: 5,
                    producto: 'Especial'
                  ) : Container(),

                  data.especial >= 6 ? _infoIngredientes(
                    tomate  : listaHamburgesas.especialIngredienteTomate    [5],
                    ensalada: listaHamburgesas.especialIngredienteEnsalada  [5],
                    ripio   : listaHamburgesas.especialIngredienteRipio     [5],
                    tocineta: listaHamburgesas.especialIngredienteTocineta  [5],
                    queso   : listaHamburgesas.especialIngredienteQueso     [5],      
                    producto: 'Especial # 6'
                  ) : Container(),

                  data.especial >= 6 ? _mostrarAdicion(

                    carne:    listaHamburgesas.especialAdicionCarne   [5],
                    tocineta: listaHamburgesas.especialAdicionTocineta[5],
                    queso:    listaHamburgesas.especialAdicionQueso   [5],
                    ensalada: listaHamburgesas.especialAdicionEnsalada[5],
                    numeroDeHamburguesa: 6,
                    producto: 'Especial'
                  ) : Container(),

                  data.especial >= 7 ? _infoIngredientes(
                    tomate  : listaHamburgesas.especialIngredienteTomate    [6],
                    ensalada: listaHamburgesas.especialIngredienteEnsalada  [6],
                    ripio   : listaHamburgesas.especialIngredienteRipio     [6],
                    tocineta: listaHamburgesas.especialIngredienteTocineta  [6],
                    queso   : listaHamburgesas.especialIngredienteQueso     [6],      
                    producto: 'Especial # 7'
                  ) : Container(),

                  data.especial >= 7 ? _mostrarAdicion(

                    carne:    listaHamburgesas.especialAdicionCarne   [6],
                    tocineta: listaHamburgesas.especialAdicionTocineta[6],
                    queso:    listaHamburgesas.especialAdicionQueso   [6],
                    ensalada: listaHamburgesas.especialAdicionEnsalada[6],
                    numeroDeHamburguesa: 7,
                    producto: 'Especial'
                  ) : Container(),

                  data.especial >= 8 ? _infoIngredientes(
                    tomate  : listaHamburgesas.especialIngredienteTomate    [7],
                    ensalada: listaHamburgesas.especialIngredienteEnsalada  [7],
                    ripio   : listaHamburgesas.especialIngredienteRipio     [7],
                    tocineta: listaHamburgesas.especialIngredienteTocineta  [7],
                    queso   : listaHamburgesas.especialIngredienteQueso     [7],      
                    producto: 'Especial # 8'
                  ) : Container(),

                  data.especial >= 8 ? _mostrarAdicion(

                    carne:    listaHamburgesas.especialAdicionCarne   [7],
                    tocineta: listaHamburgesas.especialAdicionTocineta[7],
                    queso:    listaHamburgesas.especialAdicionQueso   [7],
                    ensalada: listaHamburgesas.especialAdicionEnsalada[7],
                    numeroDeHamburguesa: 8,
                    producto: 'Especial'
                  ) : Container(),

                  data.especial >= 9 ? _infoIngredientes(
                    tomate  : listaHamburgesas.especialIngredienteTomate    [8],
                    ensalada: listaHamburgesas.especialIngredienteEnsalada  [8],
                    ripio   : listaHamburgesas.especialIngredienteRipio     [8],
                    tocineta: listaHamburgesas.especialIngredienteTocineta  [8],
                    queso   : listaHamburgesas.especialIngredienteQueso     [8],      
                    producto: 'Especial # 9'
                  ) : Container(),

                  data.especial >= 9 ? _mostrarAdicion(

                    carne:    listaHamburgesas.especialAdicionCarne   [8],
                    tocineta: listaHamburgesas.especialAdicionTocineta[8],
                    queso:    listaHamburgesas.especialAdicionQueso   [8],
                    ensalada: listaHamburgesas.especialAdicionEnsalada[8],
                    numeroDeHamburguesa: 9,
                    producto: 'Especial'
                  ) : Container(),

                  data.especial >= 10 ? _infoIngredientes(
                    tomate  : listaHamburgesas.especialIngredienteTomate    [9],
                    ensalada: listaHamburgesas.especialIngredienteEnsalada  [9],
                    ripio   : listaHamburgesas.especialIngredienteRipio     [9],
                    tocineta: listaHamburgesas.especialIngredienteTocineta  [9],
                    queso   : listaHamburgesas.especialIngredienteQueso     [9],      
                    producto: 'Especial # 10'
                  ) : Container(),

                  data.especial >= 10 ? _mostrarAdicion(

                    carne:    listaHamburgesas.especialAdicionCarne   [9],
                    tocineta: listaHamburgesas.especialAdicionTocineta[9],
                    queso:    listaHamburgesas.especialAdicionQueso   [9],
                    ensalada: listaHamburgesas.especialAdicionEnsalada[9],
                    numeroDeHamburguesa: 1,
                    producto: 'Especial'
                  ) : Container(),

                // Super
                  data.superEspecial >= 1 ?  _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [0],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [0],
                    ripio   : listaHamburgesas.superIngredienteRipio     [0],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [0],
                    queso   : listaHamburgesas.superIngredienteQueso     [0],      
                    producto: 'Super # 1'
                  ) : Container(),

                  data.superEspecial >= 1 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [0],
                    tocineta: listaHamburgesas.superAdicionTocineta[0],
                    queso:    listaHamburgesas.superAdicionQueso   [0],
                    ensalada: listaHamburgesas.superAdicionEnsalada[0],
                    numeroDeHamburguesa: 1,
                    producto: 'Super'
                  ) : Container(),

                  data.superEspecial >= 2 ? _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [1],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [1],
                    ripio   : listaHamburgesas.superIngredienteRipio     [1],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [1],
                    queso   : listaHamburgesas.superIngredienteQueso     [1],      
                    producto: 'Super # 2'
                  ) : Container(),

                  data.superEspecial >= 2 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [1],
                    tocineta: listaHamburgesas.superAdicionTocineta[1],
                    queso:    listaHamburgesas.superAdicionQueso   [1],
                    ensalada: listaHamburgesas.superAdicionEnsalada[1],
                    numeroDeHamburguesa: 2,
                    producto: 'Super'
                  ) : Container(),

                  data.superEspecial >= 3 ? _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [2],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [2],
                    ripio   : listaHamburgesas.superIngredienteRipio     [2],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [2],
                    queso   : listaHamburgesas.superIngredienteQueso     [2],      
                    producto: 'Super # 3'
                  ) : Container(),

                  data.superEspecial >= 3 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [2],
                    tocineta: listaHamburgesas.superAdicionTocineta[2],
                    queso:    listaHamburgesas.superAdicionQueso   [2],
                    ensalada: listaHamburgesas.superAdicionEnsalada[2],
                    numeroDeHamburguesa: 3,
                    producto: 'Super'
                  ) : Container(),

                  data.superEspecial >= 4 ? _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [3],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [3],
                    ripio   : listaHamburgesas.superIngredienteRipio     [3],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [3],
                    queso   : listaHamburgesas.superIngredienteQueso     [3],      
                    producto: 'Super # 4'
                  ): Container(),

                  data.superEspecial >= 4 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [3],
                    tocineta: listaHamburgesas.superAdicionTocineta[3],
                    queso:    listaHamburgesas.superAdicionQueso   [3],
                    ensalada: listaHamburgesas.superAdicionEnsalada[3],
                    numeroDeHamburguesa: 4,
                    producto: 'Super'
                  ) : Container(),

                  data.superEspecial >= 5 ? _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [4],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [4],
                    ripio   : listaHamburgesas.superIngredienteRipio     [4],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [4],
                    queso   : listaHamburgesas.superIngredienteQueso     [4],      
                    producto: 'Super # 5'
                  ) : Container(),

                  data.superEspecial >= 5 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [4],
                    tocineta: listaHamburgesas.superAdicionTocineta[4],
                    queso:    listaHamburgesas.superAdicionQueso   [4],
                    ensalada: listaHamburgesas.superAdicionEnsalada[4],
                    numeroDeHamburguesa: 5,
                    producto: 'Super'
                  ) : Container(),

                  data.superEspecial >= 6 ? _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [5],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [5],
                    ripio   : listaHamburgesas.superIngredienteRipio     [5],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [5],
                    queso   : listaHamburgesas.superIngredienteQueso     [5],      
                    producto: 'Super # 6'
                  ) : Container(),

                  data.superEspecial >= 6 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [5],
                    tocineta: listaHamburgesas.superAdicionTocineta[5],
                    queso:    listaHamburgesas.superAdicionQueso   [5],
                    ensalada: listaHamburgesas.superAdicionEnsalada[5],
                    numeroDeHamburguesa: 6,
                    producto: 'Super'
                  ) : Container(),

                  data.superEspecial >= 7 ? _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [6],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [6],
                    ripio   : listaHamburgesas.superIngredienteRipio     [6],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [6],
                    queso   : listaHamburgesas.superIngredienteQueso     [6],      
                    producto: 'Super # 7'
                  ) : Container(),

                  data.superEspecial >= 7 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [6],
                    tocineta: listaHamburgesas.superAdicionTocineta[6],
                    queso:    listaHamburgesas.superAdicionQueso   [6],
                    ensalada: listaHamburgesas.superAdicionEnsalada[6],
                    numeroDeHamburguesa: 7,
                    producto: 'Super'
                  ) : Container(),

                  data.superEspecial >= 8 ? _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [7],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [7],
                    ripio   : listaHamburgesas.superIngredienteRipio     [7],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [7],
                    queso   : listaHamburgesas.superIngredienteQueso     [7],      
                    producto: 'Super # 8'
                  ) : Container(),

                  data.superEspecial >= 8 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [7],
                    tocineta: listaHamburgesas.superAdicionTocineta[7],
                    queso:    listaHamburgesas.superAdicionQueso   [7],
                    ensalada: listaHamburgesas.superAdicionEnsalada[7],
                    numeroDeHamburguesa: 8,
                    producto: 'Super'
                  ) : Container(),

                  data.superEspecial >= 9 ? _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [8],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [8],
                    ripio   : listaHamburgesas.superIngredienteRipio     [8],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [8],
                    queso   : listaHamburgesas.superIngredienteQueso     [8],      
                    producto: 'Super # 9'
                  ) : Container(),

                  data.superEspecial >= 9 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [8],
                    tocineta: listaHamburgesas.superAdicionTocineta[8],
                    queso:    listaHamburgesas.superAdicionQueso   [8],
                    ensalada: listaHamburgesas.superAdicionEnsalada[8],
                    numeroDeHamburguesa: 9,
                    producto: 'Super'
                  ) : Container(),

                  data.superEspecial >= 10 ? _infoIngredientes(
                    tomate  : listaHamburgesas.superIngredienteTomate    [9],
                    ensalada: listaHamburgesas.superIngredienteEnsalada  [9],
                    ripio   : listaHamburgesas.superIngredienteRipio     [9],
                    tocineta: listaHamburgesas.superIngredienteTocineta  [9],
                    queso   : listaHamburgesas.superIngredienteQueso     [9],      
                    producto: 'Super # 10'
                  ) : Container(),

                  data.superEspecial >= 10 ? _mostrarAdicion(

                    carne:    listaHamburgesas.superAdicionCarne   [9],
                    tocineta: listaHamburgesas.superAdicionTocineta[9],
                    queso:    listaHamburgesas.superAdicionQueso   [9],
                    ensalada: listaHamburgesas.superAdicionEnsalada[9],
                    numeroDeHamburguesa: 10,
                    producto:'Super'
                  ) : Container(),

                // Trisuper
                  data.trisuper >= 1 ?  _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [0],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [0],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [0],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [0],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [0],      
                    producto: 'Trisuper # 1'
                  ) : Container(),

                  data.trisuper >= 1 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [0],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[0],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [0],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[0],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 1
                  ) : Container(),

                  data.trisuper >= 2 ? _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [1],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [1],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [1],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [1],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [1],      
                    producto: 'Trisuper # 2'
                  ) : Container(),

                  data.trisuper >= 2 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [1],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[1],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [1],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[1],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 2
                  ) : Container(),

                  data.trisuper >= 3 ? _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [2],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [2],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [2],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [2],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [2],      
                    producto: 'Trisuper # 3'
                  ) : Container(),

                  data.trisuper >= 3 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [2],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[2],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [2],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[2],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 3
                  ) : Container(),

                  data.trisuper >= 4 ? _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [3],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [3],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [3],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [3],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [3],      
                    producto: 'Trisuper # 4'
                  ): Container(),

                  data.trisuper >= 4 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [3],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[3],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [3],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[3],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 4
                  ) : Container(),

                  data.trisuper >= 5 ? _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [4],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [4],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [4],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [4],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [4],      
                    producto: 'Trisuper # 5'
                  ) : Container(),

                  data.trisuper >= 5 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [4],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[4],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [4],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[4],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 5
                  ) : Container(),

                  data.trisuper >= 6 ? _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [5],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [5],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [5],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [5],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [5],      
                    producto: 'Trisuper # 6'
                  ) : Container(),

                  data.trisuper >= 6 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [5],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[5],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [5],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[5],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 6
                  ) : Container(),

                  data.trisuper >= 7 ? _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [6],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [6],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [6],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [6],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [6],      
                    producto: 'Trisuper # 7'
                  ) : Container(),

                  data.trisuper >= 7 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [6],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[6],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [6],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[6],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 7
                  ) : Container(),

                  data.trisuper >= 8 ? _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [7],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [7],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [7],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [7],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [7],      
                    producto: 'Trisuper # 8'
                  ) : Container(),

                  data.trisuper >= 8 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [7],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[7],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [7],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[7],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 8
                  ) : Container(),

                  data.trisuper >= 9 ? _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [8],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [8],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [8],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [8],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [8],      
                    producto: 'Trisuper # 9'
                  ) : Container(),

                  data.trisuper >= 9 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [8],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[8],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [8],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[8],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 9
                  ) : Container(),

                  data.trisuper >= 10 ? _infoIngredientes(
                    tomate  : listaHamburgesas.trisuperIngredienteTomate    [9],
                    ensalada: listaHamburgesas.trisuperIngredienteEnsalada  [9],
                    ripio   : listaHamburgesas.trisuperIngredienteRipio     [9],
                    tocineta: listaHamburgesas.trisuperIngredienteTocineta  [9],
                    queso   : listaHamburgesas.trisuperIngredienteQueso     [9],      
                    producto: 'Trisuper # 10'
                  ) : Container(),

                  data.trisuper >= 10 ? _mostrarAdicion(
                    
                    carne:    listaHamburgesas.trisuperAdicionCarne   [9],
                    tocineta: listaHamburgesas.trisuperAdicionTocineta[9],
                    queso:    listaHamburgesas.trisuperAdicionQueso   [9],
                    ensalada: listaHamburgesas.trisuperAdicionEnsalada[9],
                    producto: 'Trisuper',
                    numeroDeHamburguesa: 10
                  ) : Container(),


                  SizedBox(height: 30,),

                  // exesoInfo || exsesoInfo2 ? Container() : Expanded(
                  //   // flex: ,
                  //   child: Container()
                  // ),

                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      // borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10) ),
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
              ),
            ),
          ),
        ),
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
    print('$i');
    return Container();
  }

  _mostrarAdicion({ int carne, int tocineta, int queso, int ensalada, int numeroDeHamburguesa, String producto, int numeroDeProducto }) {

    return Column(
      children: <Widget>[

        _infoAdicion( adicion: carne,     producto: '--$producto $numeroDeHamburguesa Ad Carne '),
        _infoAdicion( adicion: tocineta,  producto: '--$producto $numeroDeHamburguesa Ad Tocineta '),
        _infoAdicion( adicion: queso,     producto: '--$producto $numeroDeHamburguesa Ad Queso '),
        _infoAdicion( adicion: ensalada,  producto: '--$producto $numeroDeHamburguesa Ad Ensalada '),

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