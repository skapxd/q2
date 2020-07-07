import 'package:flutter/material.dart';
import 'package:q2/src/models/cliente.dart';

class ClienteFinal extends StatelessWidget {

  final TextStyle styleAppBar   = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, );
  final TextStyle styleProducto = TextStyle( fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, decoration: TextDecoration.underline,);

  final Cliente cliente;

  ClienteFinal({ this.cliente });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Del Cliente'),
        backgroundColor:  Colors.white,
        elevation: 0.5,
      ),

      backgroundColor: Color.fromRGBO(238, 241, 249, 1),

      body: SafeArea(
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
                      Text('Q2 ${cliente.municipio}', style: styleAppBar,),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('A nombre de: ${cliente.nombre}', style: styleAppBar),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Text('Número de tfl: ${cliente.telefono}', style: styleAppBar),
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

                  _infoProducto(cliente.especial, 'Especial'),


                  _infoProducto(cliente.superespecial, 'Super'),


                  _infoProducto(cliente.trisuper, 'Trisuper'),


                  _infoProducto(cliente.perroGrandeTocineta, 'Perro grande con tocineta'),


                  _infoProducto(cliente.perroGrande, 'Perro grande'),


                  _infoProducto(cliente.perroPequegnoTocineta, 'Perro pequeño con tocineta'),  


                  _infoProducto(cliente.perroPequegno, 'Perro pequeño'),

                  
                  _infoProducto(cliente.grandePerra, 'Perra grande'),


                  _infoProducto(cliente.pequegnaPerra, 'Perra pequeña'),

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
                    adicionCarne:     cliente.especialAdicionCarne   [0],
                    adicionTocineta:  cliente.especialAdicionTocineta[0],
                    adicionQueso:     cliente.especialAdicionQueso   [0],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[0],
                    producto: 'Especial',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [0],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [0],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [0],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [0],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [0],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.especialAdicionCarne   [1],
                    adicionTocineta:  cliente.especialAdicionTocineta[1],
                    adicionQueso:     cliente.especialAdicionQueso   [1],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[1],
                    producto: 'Especial',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [1],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [1],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [1],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [1],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [1],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.especialAdicionCarne   [2],
                    adicionTocineta:  cliente.especialAdicionTocineta[2],
                    adicionQueso:     cliente.especialAdicionQueso   [2],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[2],
                    producto: 'Especial',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [2],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [2],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [2],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [2],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [2],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.especialAdicionCarne   [3],
                    adicionTocineta:  cliente.especialAdicionTocineta[3],
                    adicionQueso:     cliente.especialAdicionQueso   [3],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[3],
                    producto: 'Especial',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [3],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [3],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [3],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [3],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [3],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.especialAdicionCarne   [4],
                    adicionTocineta:  cliente.especialAdicionTocineta[4],
                    adicionQueso:     cliente.especialAdicionQueso   [4],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[4],
                    producto: 'Especial',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [4],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [4],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [4],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [4],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [4],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.especialAdicionCarne   [5],
                    adicionTocineta:  cliente.especialAdicionTocineta[5],
                    adicionQueso:     cliente.especialAdicionQueso   [5],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[5],
                    producto: 'Especial',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [5],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [5],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [5],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [5],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [5],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.especialAdicionCarne   [6],
                    adicionTocineta:  cliente.especialAdicionTocineta[6],
                    adicionQueso:     cliente.especialAdicionQueso   [6],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[6],
                    producto: 'Especial',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [6],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [6],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [6],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [6],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [6],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.especialAdicionCarne   [7],
                    adicionTocineta:  cliente.especialAdicionTocineta[7],
                    adicionQueso:     cliente.especialAdicionQueso   [7],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[7],
                    producto: 'Especial',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [7],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [7],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [7],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [7],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [7],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.especialAdicionCarne   [8],
                    adicionTocineta:  cliente.especialAdicionTocineta[8],
                    adicionQueso:     cliente.especialAdicionQueso   [8],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[8],
                    producto: 'Especial',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [8],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [8],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [8],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [8],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [8],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.especialAdicionCarne   [9],
                    adicionTocineta:  cliente.especialAdicionTocineta[9],
                    adicionQueso:     cliente.especialAdicionQueso   [9],
                    adicionEnsalada:  cliente.especialAdicionEnsalada[9],
                    producto: 'Especial',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteTomate:    cliente.especialIngredienteTomate    [9],
                    ingredienteEnsalada:  cliente.especialIngredienteEnsalada  [9],
                    ingredienteRipio:     cliente.especialIngredienteRipio     [9],
                    ingredienteTocineta:  cliente.especialIngredienteTocineta  [9],
                    ingredienteQueso:     cliente.especialIngredienteQueso     [9],
                  ),
                  
                  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  ///Super
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [0],
                    adicionTocineta:  cliente.superAdicionTocineta[0],
                    adicionQueso:     cliente.superAdicionQueso   [0],
                    adicionEnsalada:  cliente.superAdicionEnsalada[0],
                    producto: 'Super',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [0],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [0],
                    ingredienteRipio:     cliente.superIngredienteRipio     [0],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [0],
                    ingredienteQueso:     cliente.superIngredienteQueso     [0],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [1],
                    adicionTocineta:  cliente.superAdicionTocineta[1],
                    adicionQueso:     cliente.superAdicionQueso   [1],
                    adicionEnsalada:  cliente.superAdicionEnsalada[1],
                    producto: 'Super',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [1],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [1],
                    ingredienteRipio:     cliente.superIngredienteRipio     [1],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [1],
                    ingredienteQueso:     cliente.superIngredienteQueso     [1],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [2],
                    adicionTocineta:  cliente.superAdicionTocineta[2],
                    adicionQueso:     cliente.superAdicionQueso   [2],
                    adicionEnsalada:  cliente.superAdicionEnsalada[2],
                    producto: 'Super',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [2],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [2],
                    ingredienteRipio:     cliente.superIngredienteRipio     [2],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [2],
                    ingredienteQueso:     cliente.superIngredienteQueso     [2],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [3],
                    adicionTocineta:  cliente.superAdicionTocineta[3],
                    adicionQueso:     cliente.superAdicionQueso   [3],
                    adicionEnsalada:  cliente.superAdicionEnsalada[3],
                    producto: 'Super',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [3],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [3],
                    ingredienteRipio:     cliente.superIngredienteRipio     [3],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [3],
                    ingredienteQueso:     cliente.superIngredienteQueso     [3],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [4],
                    adicionTocineta:  cliente.superAdicionTocineta[4],
                    adicionQueso:     cliente.superAdicionQueso   [4],
                    adicionEnsalada:  cliente.superAdicionEnsalada[4],
                    producto: 'Super',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [4],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [4],
                    ingredienteRipio:     cliente.superIngredienteRipio     [4],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [4],
                    ingredienteQueso:     cliente.superIngredienteQueso     [4],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [5],
                    adicionTocineta:  cliente.superAdicionTocineta[5],
                    adicionQueso:     cliente.superAdicionQueso   [5],
                    adicionEnsalada:  cliente.superAdicionEnsalada[5],
                    producto: 'Super',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [5],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [5],
                    ingredienteRipio:     cliente.superIngredienteRipio     [5],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [5],
                    ingredienteQueso:     cliente.superIngredienteQueso     [5],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [6],
                    adicionTocineta:  cliente.superAdicionTocineta[6],
                    adicionQueso:     cliente.superAdicionQueso   [6],
                    adicionEnsalada:  cliente.superAdicionEnsalada[6],
                    producto: 'Super',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [6],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [6],
                    ingredienteRipio:     cliente.superIngredienteRipio     [6],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [6],
                    ingredienteQueso:     cliente.superIngredienteQueso     [6],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [7],
                    adicionTocineta:  cliente.superAdicionTocineta[7],
                    adicionQueso:     cliente.superAdicionQueso   [7],
                    adicionEnsalada:  cliente.superAdicionEnsalada[7],
                    producto: 'Super',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [7],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [7],
                    ingredienteRipio:     cliente.superIngredienteRipio     [7],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [7],
                    ingredienteQueso:     cliente.superIngredienteQueso     [7],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [8],
                    adicionTocineta:  cliente.superAdicionTocineta[8],
                    adicionQueso:     cliente.superAdicionQueso   [8],
                    adicionEnsalada:  cliente.superAdicionEnsalada[8],
                    producto: 'Super',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [8],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [8],
                    ingredienteRipio:     cliente.superIngredienteRipio     [8],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [8],
                    ingredienteQueso:     cliente.superIngredienteQueso     [8],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.superAdicionCarne   [9],
                    adicionTocineta:  cliente.superAdicionTocineta[9],
                    adicionQueso:     cliente.superAdicionQueso   [9],
                    adicionEnsalada:  cliente.superAdicionEnsalada[9],
                    producto: 'Super',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteTomate:    cliente.superIngredienteTomate    [9],
                    ingredienteEnsalada:  cliente.superIngredienteEnsalada  [9],
                    ingredienteRipio:     cliente.superIngredienteRipio     [9],
                    ingredienteTocineta:  cliente.superIngredienteTocineta  [9],
                    ingredienteQueso:     cliente.superIngredienteQueso     [9],
                  ),

                  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  /// trisuper
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [0],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[0],
                    adicionQueso:     cliente.trisuperAdicionQueso   [0],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[0],
                    producto: 'Trisuper',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [0],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [0],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [0],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [0],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [0],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [1],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[1],
                    adicionQueso:     cliente.trisuperAdicionQueso   [1],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[1],
                    producto: 'Trisuper',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [1],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [1],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [1],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [1],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [1],
                  ),
                  
                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [2],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[2],
                    adicionQueso:     cliente.trisuperAdicionQueso   [2],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[2],
                    producto: 'Trisuper',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [2],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [2],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [2],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [2],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [2],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [3],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[3],
                    adicionQueso:     cliente.trisuperAdicionQueso   [3],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[3],
                    producto: 'Trisuper',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [3],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [3],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [3],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [3],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [3],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [4],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[4],
                    adicionQueso:     cliente.trisuperAdicionQueso   [4],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[4],
                    producto: 'Trisuper',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [4],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [4],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [4],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [4],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [4],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [5],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[5],
                    adicionQueso:     cliente.trisuperAdicionQueso   [5],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[5],
                    producto: 'Trisuper',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [5],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [5],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [5],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [5],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [5],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [6],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[6],
                    adicionQueso:     cliente.trisuperAdicionQueso   [6],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[6],
                    producto: 'Trisuper',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [6],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [6],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [6],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [6],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [6],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [7],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[7],
                    adicionQueso:     cliente.trisuperAdicionQueso   [7],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[7],
                    producto: 'Trisuper',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [7],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [7],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [7],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [7],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [7],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [8],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[8],
                    adicionQueso:     cliente.trisuperAdicionQueso   [8],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[8],
                    producto: 'Trisuper',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [8],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [8],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [8],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [8],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [8],
                  ),

                  _hamburguesa(
                    // Adiciones
                    adicionCarne:     cliente.trisuperAdicionCarne   [9],
                    adicionTocineta:  cliente.trisuperAdicionTocineta[9],
                    adicionQueso:     cliente.trisuperAdicionQueso   [9],
                    adicionEnsalada:  cliente.trisuperAdicionEnsalada[9],
                    producto: 'Trisuper',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteTomate:    cliente.trisuperIngredienteTomate    [9],
                    ingredienteEnsalada:  cliente.trisuperIngredienteEnsalada  [9],
                    ingredienteRipio:     cliente.trisuperIngredienteRipio     [9],
                    ingredienteTocineta:  cliente.trisuperIngredienteTocineta  [9],
                    ingredienteQueso:     cliente.trisuperIngredienteQueso     [9],
                  ),

                  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perro Grande Tocineta
                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [0],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [0],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [0],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [0],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [0],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [0],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [0],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [0],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [1],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [1],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [1],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [1],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [1],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [1],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [1],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [1],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [2],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [2],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [2],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [2],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [2],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [2],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [2],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [2],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [3],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [3],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [3],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [3],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [3],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [3],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [3],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [3],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [4],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [4],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [4],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [4],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [4],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [4],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [4],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [4],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [5],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [5],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [5],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [5],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [5],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [5],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [5],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [5],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [6],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [6],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [6],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [6],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [6],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [6],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [6],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [6],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [7],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [7],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [7],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [7],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [7],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [7],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [7],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [7],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [8],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [8],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [8],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [8],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [8],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [8],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [8],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [8],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeTocinetaAdicionTocineta           [9],
                    adicionQueso:     cliente.perroGrandeTocinetaAdicionQueso              [9],
                    adicionEnsalada:  cliente.perroGrandeTocinetaAdicionEnsalada           [9],
                    adicionSalchichaG: cliente.perroGrandeTocinetaAdicionSalchichaGrande   [9],
                    adicionSalchichaP: cliente.perroGrandeTocinetaAdicionSalchichaPequegna [9],
                    producto: 'Perro Grande Tocineta',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeTocinetaIngredienteEnsalada  [9],
                    ingredienteRipio:     cliente.perroGrandeTocinetaIngredienteRipio     [9],
                    ingredienteTocineta:  cliente.perroGrandeTocinetaIngredienteTocineta  [9],
                    ingredienteQueso:     cliente.perroGrandeTocinetaIngredienteQueso     [9],
                  ),

                  //////////////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perro Grande
                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [0],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [0],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [0],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [0],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [0],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [0],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [0],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [0],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [1],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [1],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [1],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [1],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [1],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [1],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [1],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [1],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [2],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [2],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [2],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [2],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [2],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [2],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [2],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [2],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [3],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [3],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [3],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [3],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [3],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [3],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [3],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [3],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [4],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [4],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [4],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [4],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [4],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [4],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [4],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [4],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [5],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [5],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [5],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [5],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [5],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [5],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [5],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [5],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [6],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [6],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [6],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [6],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [6],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [6],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [6],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [6],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [7],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [7],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [7],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [7],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [7],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [7],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [7],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [7],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [8],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [8],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [8],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [8],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [8],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [8],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [8],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [8],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroGrandeAdicionTocineta           [9],
                    adicionQueso:     cliente.perroGrandeAdicionQueso              [9],
                    adicionEnsalada:  cliente.perroGrandeAdicionEnsalada           [9],
                    adicionSalchichaG: cliente.perroGrandeAdicionSalchichaGrande   [9],
                    adicionSalchichaP: cliente.perroGrandeAdicionSalchichaPequegna [9],
                    producto: 'Perro Grande',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroGrandeIngredienteEnsalada  [9],
                    ingredienteRipio:     cliente.perroGrandeIngredienteRipio     [9],
                    ingredienteTocineta:  cliente.perroGrandeIngredienteTocineta  [9],
                    ingredienteQueso:     cliente.perroGrandeIngredienteQueso     [9],
                  ),

                  ////////////////////////////////////////////////////////////////////////////////////////////////////////7
                  /// Perro Pequeño Tocineta
                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [0],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [0],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [0],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [0],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [0],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [0],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [0],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [0],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [1],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [1],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [1],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [1],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [1],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [1],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [1],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [1],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [2],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [2],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [2],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [2],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [2],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [2],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [2],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [2],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [3],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [3],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [3],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [3],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [3],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [3],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [3],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [3],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [4],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [4],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [4],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [4],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [4],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [4],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [4],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [4],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [5],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [5],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [5],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [5],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [5],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [5],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [5],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [5],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [6],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [6],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [6],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [6],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [6],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [6],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [6],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [6],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [7],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [7],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [7],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [7],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [7],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [7],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [7],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [7],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [8],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [8],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [8],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [8],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [8],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [8],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [8],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [8],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoTocinetaAdicionTocineta           [9],
                    adicionQueso:     cliente.perroPequegnoTocinetaAdicionQueso              [9],
                    adicionEnsalada:  cliente.perroPequegnoTocinetaAdicionEnsalada           [9],
                    adicionSalchichaG: cliente.perroPequegnoTocinetaAdicionSalchichaGrande   [9],
                    adicionSalchichaP: cliente.perroPequegnoTocinetaAdicionSalchichaPequegna [9],
                    producto: 'Perro Pequeño Tocineta',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoTocinetaIngredienteEnsalada  [9],
                    ingredienteRipio:     cliente.perroPequegnoTocinetaIngredienteRipio     [9],
                    ingredienteTocineta:  cliente.perroPequegnoTocinetaIngredienteTocineta  [9],
                    ingredienteQueso:     cliente.perroPequegnoTocinetaIngredienteQueso     [9],
                  ),

                  ///////////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perro Pequeño
                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [0],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [0],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [0],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [0],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [0],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [0],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [0],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [0],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [1],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [1],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [1],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [1],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [1],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [1],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [1],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [1],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [2],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [2],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [2],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [2],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [2],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [2],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [2],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [2],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [3],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [3],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [3],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [3],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [3],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [3],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [3],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [3],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [4],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [4],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [4],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [4],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [4],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [4],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [4],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [4],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [5],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [5],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [5],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [5],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [5],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [5],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [5],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [5],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [6],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [6],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [6],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [6],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [6],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [6],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [6],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [6],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [7],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [7],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [7],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [7],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [7],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [7],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [7],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [7],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [8],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [8],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [8],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [8],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [8],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [8],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [8],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [8],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perroPequegnoAdicionTocineta           [9],
                    adicionQueso:     cliente.perroPequegnoAdicionQueso              [9],
                    adicionEnsalada:  cliente.perroPequegnoAdicionEnsalada           [9],
                    adicionSalchichaG: cliente.perroPequegnoAdicionSalchichaGrande   [9],
                    adicionSalchichaP: cliente.perroPequegnoAdicionSalchichaPequegna [9],
                    producto: 'Perro Pequeño',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perroPequegnoIngredienteEnsalada  [9],
                    ingredienteRipio:     cliente.perroPequegnoIngredienteRipio     [9],
                    ingredienteTocineta:  cliente.perroPequegnoIngredienteTocineta  [9],
                    ingredienteQueso:     cliente.perroPequegnoIngredienteQueso     [9],
                  ),

                  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perra Grande
                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [0],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [0],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [0],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [0],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [0],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [0],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [0],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [1],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [1],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [1],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [1],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [1],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [1],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [1],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [2],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [2],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [2],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [2],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [2],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [2],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [2],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [3],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [3],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [3],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [3],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [3],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [3],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [3],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [4],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [4],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [4],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [4],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [4],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [4],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [4],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [5],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [5],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [5],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [5],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [5],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [5],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [5],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [6],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [6],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [6],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [6],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [6],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [6],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [6],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [7],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [7],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [7],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [7],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [7],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [7],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [7],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [8],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [8],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [8],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [8],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [8],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [8],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [8],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraGrandeAdicionTocineta           [9],
                    adicionQueso:     cliente.perraGrandeAdicionQueso              [9],
                    adicionEnsalada:  cliente.perraGrandeAdicionEnsalada           [9],
                    adicionSalchichaG: cliente.perraGrandeAdicionSalchichaGrande   [9],
                    adicionSalchichaP: cliente.perraGrandeAdicionSalchichaPequegna [9],
                    producto: 'Perra Grande',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraGrandeIngredienteEnsalada  [9],
                    ingredienteRipio:     cliente.perraGrandeIngredienteRipio     [9],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraGrandeIngredienteQueso     [9],
                  ),

                  ///////////////////////////////////////////////////////////////////////////////////////////////
                  /// Perra Pequeña
                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [0],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [0],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [0],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [0],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [0],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 0,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [0],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [0],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [0],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [1],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [1],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [1],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [1],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [1],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 1,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [1],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [1],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [1],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [2],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [2],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [2],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [2],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [2],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 2,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [2],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [2],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [2],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [3],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [3],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [3],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [3],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [3],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 3,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [3],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [3],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [3],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [4],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [4],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [4],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [4],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [4],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 4,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [4],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [4],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [4],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [5],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [5],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [5],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [5],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [5],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 5,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [5],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [5],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [5],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [6],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [6],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [6],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [6],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [6],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 6,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [6],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [6],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [6],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [7],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [7],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [7],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [7],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [7],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 7,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [7],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [7],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [7],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [8],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [8],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [8],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [8],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [8],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 8,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [8],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [8],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [8],
                  ),

                  _perro(
                    // Adiciones
                    adicionTocineta:  cliente.perraPequegnaAdicionTocineta           [9],
                    adicionQueso:     cliente.perraPequegnaAdicionQueso              [9],
                    adicionEnsalada:  cliente.perraPequegnaAdicionEnsalada           [9],
                    adicionSalchichaG: cliente.perraPequegnaAdicionSalchichaGrande   [9],
                    adicionSalchichaP: cliente.perraPequegnaAdicionSalchichaPequegna [9],
                    producto: 'Perra Pequeña',
                    identificadorDeProducto: 9,
                    // Ingredietes
                    ingredienteEnsalada:  cliente.perraPequegnaIngredienteEnsalada  [9],
                    ingredienteRipio:     cliente.perraPequegnaIngredienteRipio     [9],
                    ingredienteTocineta:  2,
                    ingredienteQueso:     cliente.perraPequegnaIngredienteQueso     [9],
                  ),

                  _mensaje(cliente.mensaje),

                  SizedBox(height: 30,),
  
                  // Container(
                  //   height: 35,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(2),
                  //     // borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10) ),
                  //     color: Color.fromRGBO(255, 105, 97, 0.5),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 15),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: <Widget>[

                  //         Text('Total', style: styleAppBar,),

                  //         Text( '${valor.toStringAsFixed(3)}' , style: styleAppBar,)
                  //       ],
                  //     ),
                  //   ),
                  // )
                
                ],
              ),
            ),
          ),
        ),
      )
    );
  }

  _mensaje(String cliente) {

    return cliente == null ? Container() : SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0),
        child: Text(
          cliente,
          // style: styleAppBar,
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

  _infoDomicilio(String cliente, String campo) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // SizedBox(width: 20,),
              Text('$campo: ', style: styleAppBar),
              Text('$cliente', style: styleAppBar),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: <Widget>[
                Divider(
                  thickness: 2,
                  // color: Color.fromRGBO(161, 35, 18, 1),
                  // color: ,
                ),

                
                SizedBox(height: 5,),
              ],
            ),
          )
        ],
      ),
    );
  }


  _infoPedido(int cliente, String campo) {

    return cliente == 0 ? Container() : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // SizedBox(width: 20,),
              Text('$campo: ', style: styleAppBar),
              Text('$cliente', style: styleAppBar),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: <Widget>[
                Divider(
                  thickness: 2,
                  // color: Color.fromRGBO(161, 35, 18, 1),
                  // color: ,
                ),

                
                SizedBox(height: 5,),
              ],
            ),
          )
        ],
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

    print(cliente.especialAdicionCarne);
    
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