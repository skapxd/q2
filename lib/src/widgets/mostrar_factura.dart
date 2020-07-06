import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:q2/src/bloc/login_bloc.dart';
import 'package:q2/src/bloc/producto_bloc.dart';
import 'package:q2/src/bloc/provider.dart';
import 'package:q2/src/providers/lista_hamburgesas_provider.dart';
import 'package:q2/src/providers/lista_perros_provider.dart';
// import 'package:q2/src/widgets/hamburguesa.dart';

class ImportarFactura extends StatefulWidget {

  @override
  _ImportarFacturaState createState() => _ImportarFacturaState();
}

class _ImportarFacturaState extends State<ImportarFactura> {

  final TextStyle styleAppBar   = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, );
  final TextStyle styleProducto = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, decoration: TextDecoration.underline,);

  ListaHamburguesas listaHamburgesas  = ListaHamburguesas();
  ListaPerro        listaPerro        = ListaPerro();
  ProductoBloc      dataProduc        = ProductoBloc();
  ProductoBloc      data              = ProductoBloc();
  LoginBloc         dataForm          = LoginBloc();

  int i = 0;

  @override
  Widget build(BuildContext context) {

    this.listaHamburgesas = Provider.of<ListaHamburguesas>(context);
    this.listaPerro       = Provider.of<ListaPerro>(context);
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
                  // Hamburguesa(),
                  
                /////////////////////////////////////////////////////////////////////////////////////////////
                /// Especiales 
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [0],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[0],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [0],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[0],
                    producto: 'Especial',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [0],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [0],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [0],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [0],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [0],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [1],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[1],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [1],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[1],
                    producto: 'Especial',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [1],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [1],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [1],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [1],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [1],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [2],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[2],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [2],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[2],
                    producto: 'Especial',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [2],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [2],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [2],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [2],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [2],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [3],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[3],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [3],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[3],
                    producto: 'Especial',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [3],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [3],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [3],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [3],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [3],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [4],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[4],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [4],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[4],
                    producto: 'Especial',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [4],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [4],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [4],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [4],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [4],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [5],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[5],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [5],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[5],
                    producto: 'Especial',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [5],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [5],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [5],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [5],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [5],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [6],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[6],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [6],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[6],
                    producto: 'Especial',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [6],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [6],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [6],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [6],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [6],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [7],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[7],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [7],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[7],
                    producto: 'Especial',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [7],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [7],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [7],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [7],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [7],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [8],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[8],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [8],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[8],
                    producto: 'Especial',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [8],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [8],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [8],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [8],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [8],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.especialAdicionCarne   [9],
                    adicionTocineta:  listaHamburgesas.especialAdicionTocineta[9],
                    adicionQueso:     listaHamburgesas.especialAdicionQueso   [9],
                    adicionEnsalada:  listaHamburgesas.especialAdicionEnsalada[9],
                    producto: 'Especial',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.especialIngredienteTomate    [9],
                    ingredienteEnsalada:  listaHamburgesas.especialIngredienteEnsalada  [9],
                    ingredienteRipio:     listaHamburgesas.especialIngredienteRipio     [9],
                    ingredienteTocineta:  listaHamburgesas.especialIngredienteTocineta  [9],
                    ingredienteQueso:     listaHamburgesas.especialIngredienteQueso     [9],
                  ),
                  
                  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  ///Super
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [0],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[0],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [0],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[0],
                    producto: 'Super',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [0],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [0],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [0],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [0],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [0],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [1],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[1],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [1],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[1],
                    producto: 'Super',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [1],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [1],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [1],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [1],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [1],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [2],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[2],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [2],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[2],
                    producto: 'Super',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [2],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [2],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [2],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [2],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [2],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [3],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[3],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [3],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[3],
                    producto: 'Super',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [3],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [3],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [3],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [3],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [3],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [4],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[4],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [4],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[4],
                    producto: 'Super',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [4],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [4],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [4],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [4],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [4],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [5],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[5],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [5],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[5],
                    producto: 'Super',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [5],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [5],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [5],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [5],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [5],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [6],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[6],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [6],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[6],
                    producto: 'Super',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [6],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [6],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [6],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [6],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [6],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [7],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[7],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [7],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[7],
                    producto: 'Super',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [7],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [7],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [7],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [7],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [7],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [8],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[8],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [8],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[8],
                    producto: 'Super',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [8],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [8],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [8],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [8],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [8],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.superAdicionCarne   [9],
                    adicionTocineta:  listaHamburgesas.superAdicionTocineta[9],
                    adicionQueso:     listaHamburgesas.superAdicionQueso   [9],
                    adicionEnsalada:  listaHamburgesas.superAdicionEnsalada[9],
                    producto: 'Super',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.superIngredienteTomate    [9],
                    ingredienteEnsalada:  listaHamburgesas.superIngredienteEnsalada  [9],
                    ingredienteRipio:     listaHamburgesas.superIngredienteRipio     [9],
                    ingredienteTocineta:  listaHamburgesas.superIngredienteTocineta  [9],
                    ingredienteQueso:     listaHamburgesas.superIngredienteQueso     [9],
                  ),

                  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  /// trisuper
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [0],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[0],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [0],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[0],
                    producto: 'Trisuper',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [0],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [0],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [0],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [0],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [0],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [1],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[1],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [1],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[1],
                    producto: 'Trisuper',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [1],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [1],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [1],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [1],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [1],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [2],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[2],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [2],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[2],
                    producto: 'Trisuper',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [2],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [2],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [2],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [2],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [2],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [3],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[3],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [3],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[3],
                    producto: 'Trisuper',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [3],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [3],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [3],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [3],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [3],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [4],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[4],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [4],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[4],
                    producto: 'Trisuper',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [4],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [4],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [4],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [4],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [4],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [5],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[5],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [5],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[5],
                    producto: 'Trisuper',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [5],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [5],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [5],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [5],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [5],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [6],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[6],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [6],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[6],
                    producto: 'Trisuper',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [6],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [6],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [6],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [6],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [6],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [7],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[7],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [7],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[7],
                    producto: 'Trisuper',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [7],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [7],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [7],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [7],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [7],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [8],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[8],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [8],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[8],
                    producto: 'Trisuper',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [8],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [8],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [8],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [8],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [8],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     listaHamburgesas.trisuperAdicionCarne   [9],
                    adicionTocineta:  listaHamburgesas.trisuperAdicionTocineta[9],
                    adicionQueso:     listaHamburgesas.trisuperAdicionQueso   [9],
                    adicionEnsalada:  listaHamburgesas.trisuperAdicionEnsalada[9],
                    producto: 'Trisuper',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteTomate:    listaHamburgesas.trisuperIngredienteTomate    [9],
                    ingredienteEnsalada:  listaHamburgesas.trisuperIngredienteEnsalada  [9],
                    ingredienteRipio:     listaHamburgesas.trisuperIngredienteRipio     [9],
                    ingredienteTocineta:  listaHamburgesas.trisuperIngredienteTocineta  [9],
                    ingredienteQueso:     listaHamburgesas.trisuperIngredienteQueso     [9],
                  ),

                  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perro Grande Tocineta
                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [0],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [0],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [0],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [0],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [0],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [0],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [0],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [0],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [1],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [1],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [1],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [1],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [1],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [1],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [1],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [1],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [2],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [2],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [2],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [2],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [2],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [2],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [2],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [2],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [3],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [3],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [3],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [3],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [3],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [3],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [3],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [3],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [4],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [4],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [4],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [4],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [4],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [4],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [4],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [4],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [5],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [5],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [5],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [5],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [5],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [5],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [5],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [5],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [6],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [6],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [6],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [6],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [6],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [6],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [6],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [6],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [7],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [7],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [7],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [7],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [7],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [7],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [7],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [7],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [8],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [8],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [8],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [8],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [8],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [8],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [8],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [8],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeTocinetaAdicionTocineta           [9],
                    adicionQueso:     listaPerro.perroGrandeTocinetaAdicionQueso              [9],
                    adicionEnsalada:  listaPerro.perroGrandeTocinetaAdicionEnsalada           [9],
                    adicionSalchichaG: listaPerro.perroGrandeTocinetaAdicionSalchichaGrande   [9],
                    adicionSalchichaP: listaPerro.perroGrandeTocinetaAdicionSalchichaPequegna [9],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeTocinetaIngredienteEnsalada  [9],
                    ingredienteRipio:     listaPerro.perroGrandeTocinetaIngredienteRipio     [9],
                    ingredienteTocineta:  listaPerro.perroGrandeTocinetaIngredienteTocineta  [9],
                    ingredienteQueso:     listaPerro.perroGrandeTocinetaIngredienteQueso     [9],
                  ),

                  //////////////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perro Grande
                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [0],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [0],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [0],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [0],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [0],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [0],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [0],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [0],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [1],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [1],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [1],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [1],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [1],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [1],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [1],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [1],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [2],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [2],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [2],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [2],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [2],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [2],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [2],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [2],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [3],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [3],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [3],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [3],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [3],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [3],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [3],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [3],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [4],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [4],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [4],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [4],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [4],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [4],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [4],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [4],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [5],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [5],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [5],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [5],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [5],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [5],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [5],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [5],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [6],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [6],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [6],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [6],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [6],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [6],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [6],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [6],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [7],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [7],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [7],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [7],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [7],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [7],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [7],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [7],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [8],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [8],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [8],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [8],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [8],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [8],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [8],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [8],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroGrandeAdicionTocineta           [9],
                    adicionQueso:     listaPerro.perroGrandeAdicionQueso              [9],
                    adicionEnsalada:  listaPerro.perroGrandeAdicionEnsalada           [9],
                    adicionSalchichaG: listaPerro.perroGrandeAdicionSalchichaGrande   [9],
                    adicionSalchichaP: listaPerro.perroGrandeAdicionSalchichaPequegna [9],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroGrandeIngredienteEnsalada  [9],
                    ingredienteRipio:     listaPerro.perroGrandeIngredienteRipio     [9],
                    ingredienteTocineta:  listaPerro.perroGrandeIngredienteTocineta  [9],
                    ingredienteQueso:     listaPerro.perroGrandeIngredienteQueso     [9],
                  ),

                  ////////////////////////////////////////////////////////////////////////////////////////////////////////7
                  /// Perro Pequeño Tocineta
                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [0],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [0],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [0],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [0],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [0],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [0],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [0],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [0],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [1],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [1],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [1],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [1],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [1],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [1],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [1],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [1],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [2],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [2],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [2],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [2],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [2],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [2],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [2],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [2],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [3],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [3],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [3],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [3],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [3],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [3],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [3],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [3],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [4],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [4],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [4],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [4],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [4],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [4],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [4],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [4],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [5],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [5],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [5],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [5],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [5],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [5],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [5],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [5],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [6],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [6],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [6],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [6],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [6],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [6],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [6],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [6],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [7],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [7],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [7],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [7],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [7],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [7],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [7],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [7],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [8],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [8],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [8],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [8],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [8],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [8],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [8],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [8],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoTocinetaAdicionTocineta           [9],
                    adicionQueso:     listaPerro.perroPequegnoTocinetaAdicionQueso              [9],
                    adicionEnsalada:  listaPerro.perroPequegnoTocinetaAdicionEnsalada           [9],
                    adicionSalchichaG: listaPerro.perroPequegnoTocinetaAdicionSalchichaGrande   [9],
                    adicionSalchichaP: listaPerro.perroPequegnoTocinetaAdicionSalchichaPequegna [9],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoTocinetaIngredienteEnsalada  [9],
                    ingredienteRipio:     listaPerro.perroPequegnoTocinetaIngredienteRipio     [9],
                    ingredienteTocineta:  listaPerro.perroPequegnoTocinetaIngredienteTocineta  [9],
                    ingredienteQueso:     listaPerro.perroPequegnoTocinetaIngredienteQueso     [9],
                  ),

                  ///////////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perro Pequeño
                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [0],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [0],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [0],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [0],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [0],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [0],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [0],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [0],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [1],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [1],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [1],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [1],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [1],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [1],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [1],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [1],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [2],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [2],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [2],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [2],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [2],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [2],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [2],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [2],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [3],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [3],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [3],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [3],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [3],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [3],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [3],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [3],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [4],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [4],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [4],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [4],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [4],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [4],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [4],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [4],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [5],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [5],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [5],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [5],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [5],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [5],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [5],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [5],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [6],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [6],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [6],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [6],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [6],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [6],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [6],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [6],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [7],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [7],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [7],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [7],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [7],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [7],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [7],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [7],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [8],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [8],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [8],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [8],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [8],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [8],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [8],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [8],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perroPequegnoAdicionTocineta           [9],
                    adicionQueso:     listaPerro.perroPequegnoAdicionQueso              [9],
                    adicionEnsalada:  listaPerro.perroPequegnoAdicionEnsalada           [9],
                    adicionSalchichaG: listaPerro.perroPequegnoAdicionSalchichaGrande   [9],
                    adicionSalchichaP: listaPerro.perroPequegnoAdicionSalchichaPequegna [9],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perroPequegnoIngredienteEnsalada  [9],
                    ingredienteRipio:     listaPerro.perroPequegnoIngredienteRipio     [9],
                    ingredienteTocineta:  listaPerro.perroPequegnoIngredienteTocineta  [9],
                    ingredienteQueso:     listaPerro.perroPequegnoIngredienteQueso     [9],
                  ),

                  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perra Grande
                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [0],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [0],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [0],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [0],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [0],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [0],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [0],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [1],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [1],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [1],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [1],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [1],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [1],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [1],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [2],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [2],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [2],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [2],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [2],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [2],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [2],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [3],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [3],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [3],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [3],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [3],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [3],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [3],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [4],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [4],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [4],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [4],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [4],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [4],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [4],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [5],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [5],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [5],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [5],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [5],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [5],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [5],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [6],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [6],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [6],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [6],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [6],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [6],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [6],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [7],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [7],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [7],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [7],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [7],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [7],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [7],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [8],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [8],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [8],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [8],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [8],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [8],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [8],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraGrandeAdicionTocineta           [9],
                    adicionQueso:     listaPerro.perraGrandeAdicionQueso              [9],
                    adicionEnsalada:  listaPerro.perraGrandeAdicionEnsalada           [9],
                    adicionSalchichaG: listaPerro.perraGrandeAdicionSalchichaGrande   [9],
                    adicionSalchichaP: listaPerro.perraGrandeAdicionSalchichaPequegna [9],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraGrandeIngredienteEnsalada  [9],
                    ingredienteRipio:     listaPerro.perraGrandeIngredienteRipio     [9],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraGrandeIngredienteQueso     [9],
                  ),

                  ///////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perra Pequeña
                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [0],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [0],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [0],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [0],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [0],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [0],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [0],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [1],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [1],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [1],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [1],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [1],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [1],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [1],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [2],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [2],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [2],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [2],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [2],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [2],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [2],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [3],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [3],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [3],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [3],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [3],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [3],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [3],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [4],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [4],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [4],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [4],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [4],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [4],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [4],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [5],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [5],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [5],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [5],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [5],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [5],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [5],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [6],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [6],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [6],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [6],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [6],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [6],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [6],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [7],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [7],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [7],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [7],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [7],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [7],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [7],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [8],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [8],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [8],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [8],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [8],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [8],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [8],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  listaPerro.perraPequegnaAdicionTocineta           [9],
                    adicionQueso:     listaPerro.perraPequegnaAdicionQueso              [9],
                    adicionEnsalada:  listaPerro.perraPequegnaAdicionEnsalada           [9],
                    adicionSalchichaG: listaPerro.perraPequegnaAdicionSalchichaGrande   [9],
                    adicionSalchichaP: listaPerro.perraPequegnaAdicionSalchichaPequegna [9],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  listaPerro.perraPequegnaIngredienteEnsalada  [9],
                    ingredienteRipio:     listaPerro.perraPequegnaIngredienteRipio     [9],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     listaPerro.perraPequegnaIngredienteQueso     [9],
                  ),

                  
                  


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

  _infoIngredienteTomate(int dataProduc,   ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              // Text(  producto, style: styleAppBar) ,
              Text('-- Nada de tomate', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Poco tomate', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Normal de tomate', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Extra de tomate', style: styleAppBar),
            ],
          ) : Container(), 

          

        ],
      ),
    );
  }

  _infoIngredienteEnsalada(int dataProduc,   ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              // Text(  producto, style: styleAppBar) ,
              Text('-- Nada de Ensalada', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Poca Ensalada', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Normal', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Extra de Ensalada', style: styleAppBar),
            ],
          ) : Container(), 

        ],
      ),
    );
  }

  _infoIngredienteRipio(int dataProduc,   ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              // Text(  producto, style: styleAppBar) ,
              Text('-- Nada de ripio', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Poco ripio', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Normal', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Extra de ripio', style: styleAppBar),
            ],
          ) : Container(), 

        ],
      ),
    );
  }

  _infoIngredienteTocineta(int dataProduc,   ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[
          
          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              // Text(  producto, style: styleAppBar) ,
              Text('-- Nada de tocineta', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Poca tocineta', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Normal', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Extra tocineta', style: styleAppBar),
            ],
          ) : Container(), 

        ],
      ),
    );
  }

  _infoIngredienteQueso(int dataProduc,   ) {
    
    return dataProduc == 2 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[
          
          dataProduc == 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              // Text(  producto, style: styleAppBar) ,
              Text('-- Nada queso', style: styleAppBar),
            ],
          ) : Container(), 
          
          dataProduc == 1 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Poco queso', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 2 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Normal', style: styleAppBar),
            ],
          ) : Container(), 

          dataProduc == 3 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(  producto, style: styleAppBar) ,
              Text('-- Extra queso', style: styleAppBar),
            ],
          ) : Container(), 

        ],
      ),
    );
  }


  _infoAdicion( {int adicion, String producto,}  ) {
    
    return adicion == 0 ? Container() : 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: <Widget>[

          
          adicion > 0 ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              // Text(  producto, style: styleAppBar) ,
              Text('-- Adición $producto', style: styleAppBar),
              Text('$adicion', style: styleAppBar),
            ],
          ) 
          : Container(), 

          
          
        ],
      ),
    );
  }


  _hamburguesa({ int ingredienteTomate, int ingredienteEnsalada, int ingredienteRipio, int ingredienteTocineta, int ingredienteQueso,
    int adicionCarne, int adicionTocineta, int adicionQueso, int adicionEnsalada, int identificadorDeProducto, String producto  }) {

    return Column(
      children: <Widget>[

        ingredienteTomate != 2 || ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 || adicionCarne > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ?
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(  '$producto # ${identificadorDeProducto+1}', style: styleProducto),
        ) : Container(),

        ingredienteTomate != 2 || ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 || adicionCarne > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ? SizedBox(height: 10,) : Container(),

        // Ingredientes
        ingredienteTomate != 2 || ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            ingredienteTomate    == 2 ? Container() : _infoIngredienteTomate(   ingredienteTomate   ),
            ingredienteEnsalada  == 2 ? Container() : _infoIngredienteEnsalada( ingredienteEnsalada ),
            ingredienteRipio     == 2 ? Container() : _infoIngredienteRipio(    ingredienteRipio    ),
            ingredienteTocineta  == 2 ? Container() : _infoIngredienteTocineta( ingredienteTocineta ),
            ingredienteQueso     == 2 ? Container() : _infoIngredienteQueso(    ingredienteQueso    ),

            ingredienteTomate != 2 || ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 ? Divider() : Container(),
          ]
        ) : Container(),

        // Adiciones
        adicionCarne > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ? Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            _infoAdicion( adicion: adicionCarne,     producto: 'Carne '),
            _infoAdicion( adicion: adicionTocineta,  producto: 'Tocineta '),
            _infoAdicion( adicion: adicionQueso,     producto: 'Queso '),
            _infoAdicion( adicion: adicionEnsalada,  producto: 'Ensalada '),

            adicionCarne > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ? Divider() : Container()
          ],
        ) : Container(),

        ingredienteTomate != 2 || ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 || adicionCarne > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ? SizedBox(height: 10,) : Container(),

      ],
    );
  }


  _perro({ int adicionSalchichaG, int ingredienteEnsalada, int ingredienteRipio, int ingredienteTocineta, int ingredienteQueso,
    int adicionSalchichaP, int adicionTocineta, int adicionQueso, int adicionEnsalada, int identificadorDeProducto, String producto  }) {

    return Column(
      children: <Widget>[

        ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 || adicionSalchichaP > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ?
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(  '$producto # ${identificadorDeProducto+1}', style: styleProducto),
        ) : Container(),

        ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 || adicionSalchichaP > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ? SizedBox(height: 10,) : Container(),

        // Ingredientes
        ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            ingredienteEnsalada  == 2 ? Container() : _infoIngredienteEnsalada( ingredienteEnsalada ),
            ingredienteRipio     == 2 ? Container() : _infoIngredienteRipio(    ingredienteRipio    ),
            ingredienteTocineta  == 2 ? Container() : _infoIngredienteTocineta( ingredienteTocineta ),
            ingredienteQueso     == 2 ? Container() : _infoIngredienteQueso(    ingredienteQueso    ),

            ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 ? Divider() : Container(),
          ]
        ) : Container(),

        // Adiciones
        adicionSalchichaP > 0 || adicionSalchichaG > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ? Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            _infoAdicion( adicion: adicionSalchichaP,     producto: 'Salchicha Pequeña'),
            _infoAdicion( adicion: adicionSalchichaG,     producto: 'Salchicha Grande'),
            _infoAdicion( adicion: adicionTocineta,  producto: 'Tocineta '),
            _infoAdicion( adicion: adicionQueso,     producto: 'Queso '),
            _infoAdicion( adicion: adicionEnsalada,  producto: 'Ensalada '),

            adicionSalchichaP > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ? Divider() : Container()
          ],
        ) : Container(),

        ingredienteEnsalada != 2 || ingredienteRipio != 2 || ingredienteTocineta != 2 || ingredienteQueso != 2 || adicionSalchichaP > 0 || adicionTocineta > 0 || adicionQueso > 0 || adicionEnsalada > 0 ? SizedBox(height: 10,) : Container(),

      ],
    );
  }



}