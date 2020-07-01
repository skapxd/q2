

import 'dart:async';

import 'package:rxdart/rxdart.dart';

class ProductoBloc {

  // Hamburgesa
  final _especialController             = BehaviorSubject<int>();
    // Ingredientes
    final _especialIngredientesTomateController   = BehaviorSubject<List<int>>();
    final _especialIngredientesEnsaladaController = BehaviorSubject<List<int>>();
    final _especialIngredientesRipioController    = BehaviorSubject<List<int>>();
    final _especialIngredientesTocinetaController = BehaviorSubject<List<int>>();
    final _especialIngredientesQuesoController    = BehaviorSubject<List<int>>();
    // Adiciones
    final _especialAdicionCarneController     = BehaviorSubject<List<int>>();    
    final _especialAdicionEnsaladaController  = BehaviorSubject<List<int>>();
    final _especialAdicionTocinetaController  = BehaviorSubject<List<int>>();
    final _especialAdicionQuesoController     = BehaviorSubject<List<int>>();

  final _superController                = BehaviorSubject<int>();
    // Ingredientes
    final _superIngredientesTomateController   = BehaviorSubject<List<int>>();
    final _superIngredientesEnsaladaController = BehaviorSubject<List<int>>();
    final _superIngredientesRipioController    = BehaviorSubject<List<int>>();
    final _superIngredientesTocinetaController = BehaviorSubject<List<int>>();
    final _superIngredientesQuesoController    = BehaviorSubject<List<int>>();
    // Adiciones
    final _superAdicionCarneController         = BehaviorSubject<List<int>>();
    final _superAdicionEnsaladaController      = BehaviorSubject<List<int>>();
    final _superAdicionTocinetaController      = BehaviorSubject<List<int>>();
    final _superAdicionQuesoController         = BehaviorSubject<List<int>>();

  final _triSuperController             = BehaviorSubject<int>();
    // Ingredientes
    final _triSuperIngredientesTomateController    = BehaviorSubject<List<int>>();
    final _triSuperIngredientesEnsaladaController  = BehaviorSubject<List<int>>();
    final _triSuperIngredientesRipioController     = BehaviorSubject<List<int>>();
    final _triSuperIngredientesTocinetaController  = BehaviorSubject<List<int>>();
    final _triSuperIngredientesQuesoController     = BehaviorSubject<List<int>>();
    // Adiciones
    final _triSuperAdicionCarneController          = BehaviorSubject<List<int>>();
    final _triSuperAdicionEnsaladaController       = BehaviorSubject<List<int>>();
    final _triSuperAdicionTocinetaController       = BehaviorSubject<List<int>>();
    final _triSuperAdicionQuesoController          = BehaviorSubject<List<int>>();

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
    // Ingredientes 
    Function(List<int>) get cantidadEspecialIngredientesTomate      => _especialIngredientesTomateController.sink.add;
    Function(List<int>) get cantidadEspecialIngredientesEnsalada    => _especialIngredientesEnsaladaController.sink.add;
    Function(List<int>) get cantidadEspecialIngredientesRipio       => _especialIngredientesRipioController.sink.add;
    Function(List<int>) get cantidadEspecialIngredientesTocineta    => _especialIngredientesTocinetaController.sink.add;
    Function(List<int>) get cantidadEspecialIngredientesQueso       => _especialIngredientesQuesoController.sink.add;
    // Adiciones
    Function(List<int>) get cantidadEspecialAdicionCarne     => _especialAdicionCarneController.sink.add;
    Function(List<int>) get cantidadEspecialAdicionEnsalada  => _especialAdicionEnsaladaController.sink.add;
    Function(List<int>) get cantidadEspecialAdicionTocineta  => _especialAdicionTocinetaController.sink.add;
    Function(List<int>) get cantidadEspecialAdicionQueso     => _especialAdicionQuesoController.sink.add;
    
  Function(int) get cantidadSuper                 => _superController.sink.add;
    // Ingredientes 
    Function(List<int>) get cantidadSuperIngredientesTomate      => _superIngredientesTomateController.sink.add;
    Function(List<int>) get cantidadSuperIngredientesEnsalada    => _superIngredientesEnsaladaController.sink.add;
    Function(List<int>) get cantidadSuperIngredientesRipio       => _superIngredientesRipioController.sink.add;
    Function(List<int>) get cantidadSuperIngredientesTocineta    => _superIngredientesTocinetaController.sink.add;
    Function(List<int>) get cantidadSuperIngredientesQueso       => _superIngredientesQuesoController.sink.add;
    // Adiciones
    Function(List<int>) get cantidadSuperAdicionCarne     => _superAdicionCarneController.sink.add;
    Function(List<int>) get cantidadSuperAdicionEnsalada  => _superAdicionEnsaladaController.sink.add;
    Function(List<int>) get cantidadSuperAdicionTocineta  => _superAdicionTocinetaController.sink.add;
    Function(List<int>) get cantidadSuperAdicionQueso     => _superAdicionQuesoController.sink.add;
  
  Function(int) get cantidadTrisuper              => _triSuperController.sink.add;
    // Ingredientes 
    Function(List<int>) get cantidadTrisuperIngredientesTomate      => _triSuperIngredientesTomateController.sink.add;
    Function(List<int>) get cantidadTrisuperIngredientesEnsalada    => _triSuperIngredientesEnsaladaController.sink.add;
    Function(List<int>) get cantidadTrisuperIngredientesRipio       => _triSuperIngredientesRipioController.sink.add;
    Function(List<int>) get cantidadTrisuperIngredientesTocineta    => _triSuperIngredientesTocinetaController.sink.add;
    Function(List<int>) get cantidadTrisuperIngredientesQueso       => _triSuperIngredientesQuesoController.sink.add;
    // Adiciones
    Function(List<int>) get cantidadTrisuperAdicionCarne     => _triSuperAdicionCarneController.sink.add;
    Function(List<int>) get cantidadTrisuperAdicionEnsalada  => _triSuperAdicionEnsaladaController.sink.add;
    Function(List<int>) get cantidadTrisuperAdicionTocineta  => _triSuperAdicionTocinetaController.sink.add;
    Function(List<int>) get cantidadTrisuperAdicionQueso     => _triSuperAdicionQuesoController.sink.add;
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
    List<int> get especialIngredientesTomate   => _especialIngredientesTomateController.value;       
    List<int> get especialIngredientesEnsalada => _especialIngredientesEnsaladaController.value;
    List<int> get especialIngredientesRipio    => _especialIngredientesRipioController.value;
    List<int> get especialIngredientesTocineta => _especialIngredientesTocinetaController.value;
    List<int> get especialIngredientesQueso    => _especialIngredientesQuesoController.value;
    // Adiciones
    List<int> get especialAdicionCarne         => _especialAdicionCarneController.value;
    List<int> get especialAdicionEnsalada      => _especialAdicionEnsaladaController.value;
    List<int> get especialAdicionTocineta      => _especialAdicionTocinetaController.value;
    List<int> get especialAdicionQueso         => _especialAdicionQuesoController.value;
  
  int get superEspecial         => _superController.value;
    // Ingredientes
    List<int> get superIngredientesTomate   => _superIngredientesTomateController.value;       
    List<int> get superIngredientesEnsalada => _superIngredientesEnsaladaController.value;
    List<int> get superIngredientesRipio    => _superIngredientesRipioController.value;
    List<int> get superIngredientesTocineta => _superIngredientesTocinetaController.value;
    List<int> get superIngredientesQueso    => _superIngredientesQuesoController.value;
    // Adiciones
    List<int> get superAdicionCarne         => _superAdicionCarneController.value;
    List<int> get superAdicionEnsalada      => _superAdicionEnsaladaController.value;
    List<int> get superAdicionTocineta      => _superAdicionTocinetaController.value;
    List<int> get superAdicionQueso         => _superAdicionQuesoController.value;

  int get trisuper              => _triSuperController.value;
    // Ingredientes
    List<int> get triSuperIngredientesTomate   => _triSuperIngredientesTomateController.value;       
    List<int> get triSuperIngredientesEnsalada => _triSuperIngredientesEnsaladaController.value;
    List<int> get triSuperIngredientesRipio    => _triSuperIngredientesRipioController.value;
    List<int> get triSuperIngredientesTocineta => _triSuperIngredientesTocinetaController.value;
    List<int> get triSuperIngredientesQueso    => _triSuperIngredientesQuesoController.value;
    // Adiciones
    List<int> get triSuperAdicionCarne         => _triSuperAdicionCarneController.value;
    List<int> get triSuperAdicionEnsalada      => _triSuperAdicionEnsaladaController.value;
    List<int> get triSuperAdicionTocineta      => _triSuperAdicionTocinetaController.value;
    List<int> get triSuperAdicionQueso         => _triSuperAdicionQuesoController.value;
  
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
      _especialIngredientesTomateController?.   close();
      _especialIngredientesEnsaladaController?. close();
      _especialIngredientesRipioController?.    close();
      _especialIngredientesTocinetaController?. close();
      _especialIngredientesQuesoController?.    close();
      // Adiciones
      _especialAdicionCarneController?.         close();
      _especialAdicionEnsaladaController?.      close();
      _especialAdicionTocinetaController?.      close();
      _especialAdicionQuesoController?.         close();

    _superController?.               close(); 
      // Ingredientes
      _superIngredientesTomateController?.  close();
      _superIngredientesEnsaladaController?.close();
      _superIngredientesRipioController?.   close();
      _superIngredientesTocinetaController?.close();
      _superIngredientesQuesoController?.   close();
      // Adiciones
      _superAdicionCarneController?.        close();
      _superAdicionEnsaladaController?.     close();
      _superAdicionTocinetaController?.     close();
      _superAdicionQuesoController?.        close();

    _triSuperController?.         close();
    // Ingredientes
      _triSuperIngredientesTomateController?.   close();      
      _triSuperIngredientesEnsaladaController?. close();        
      _triSuperIngredientesRipioController?.    close();      
      _triSuperIngredientesTocinetaController?. close();         
      _triSuperIngredientesQuesoController?.    close();    
      // Adiciones 
      _triSuperAdicionCarneController?.         close();
      _triSuperAdicionEnsaladaController?.      close();   
      _triSuperAdicionTocinetaController?.      close();    
      _triSuperAdicionQuesoController?.         close();
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