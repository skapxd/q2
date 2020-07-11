

import 'dart:async';

import 'package:rxdart/rxdart.dart';

class ProductoBloc {

  // Hamburgesa
  final _especialController             = BehaviorSubject<int>();
  final _superController                = BehaviorSubject<int>();

  final _triSuperController             = BehaviorSubject<int>();

  // Perros
  final _perroGrandeTocinetaController  = BehaviorSubject<int>();
  final _perroGrandeController          = BehaviorSubject<int>();
  final _perroPequegnocinetaController  = BehaviorSubject<int>();
  final _perroPequegnoController        = BehaviorSubject<int>();
  // Perras
  final _grandePerraController          = BehaviorSubject<int>();
  final _pequegnaPerraController        = BehaviorSubject<int>();

  //////////////////////////////////////////////////////////////////////////
  // Recuperar Los datos del Stream

    // Hamburgesas
  Stream<int> get especialStream              => _especialController.stream;
  Stream<int> get superStream                 => _superController.stream;
  Stream<int> get trisuperStream              => _triSuperController.stream;
    // Perros 
  Stream<int> get perroGrandeTocinetaStream   => _perroGrandeTocinetaController.stream;
  Stream<int> get perroGrandeStream           => _perroGrandeController.stream;
  Stream<int> get perroPequegnoTocinetaStream => _perroPequegnocinetaController.stream;
  Stream<int> get perroPequegnoStream         => _perroPequegnoController.stream;
    // Perras 
  Stream<int> get grandePerraStream           => _grandePerraController.stream;
  Stream<int> get pequegnaPerraStream         => _pequegnaPerraController.stream;

  ////////////////////////////////////////////////////////////////////////////////
  // Insertar Valores al Stream
  Function(int) get cantidadEspecial              => _especialController.sink.add;
    
  Function(int) get cantidadSuper                 => _superController.sink.add;
  
  Function(int) get cantidadTrisuper              => _triSuperController.sink.add;
    // Perros
  Function(int) get cantidadPerroGrandeTocineta   => _perroGrandeTocinetaController.sink.add;
  Function(int) get cantidadPerroGrande           => _perroGrandeController.sink.add;
  Function(int) get cantidadPerroPequegnoTocineta => _perroPequegnocinetaController.sink.add;
  Function(int) get cantidadPerroPequegno         => _perroPequegnoController.sink.add;
  // Perras
  Function(int) get cantidadGrandePerra           => _grandePerraController.sink.add;
  Function(int) get cantidadEPequegnaPerra        => _pequegnaPerraController.sink.add;

  /////////////////////////////////////////////////////////////////////////////////////
  // Obtener el untimo valor del Stream
  int get especial              => _especialController.value;
    // Ingredientes
   
  int get superEspecial         => _superController.value;
    // Ingredientes
   
  int get trisuper              => _triSuperController.value;
    // Ingredientes
    int get perroGrandeTocineta   => _perroGrandeTocinetaController.value;
  int get perroGrande           => _perroGrandeController.value;
  int get perroPequegnoTocineta => _perroPequegnocinetaController.value;
  int get perroPequegno         => _perroPequegnoController.value;

  int get grandePerra           => _grandePerraController.value;
  int get pequegnaPerra         => _pequegnaPerraController.value;
  
  dispose() {

    // Hamburgesas
    _especialController?.            close();
      // Igredientes
 
    _superController?.               close(); 
      // Ingredientes
     
    _triSuperController?.         close();
    // Ingredientes
        // Perros
    _perroGrandeTocinetaController?. close();
    _perroGrandeController?.         close();
    _perroPequegnocinetaController?. close();
    _perroPequegnoController?.       close();
    // Perras
    _grandePerraController?.         close();
    _pequegnaPerraController?.       close();
    
  }

}