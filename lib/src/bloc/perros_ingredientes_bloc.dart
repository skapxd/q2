

import 'dart:async';

class PerrosIngredientesBloc {

  final StreamController<List> _ensaladaController        = StreamController<List>.broadcast();
  final StreamController<List> _ripioController           = StreamController<List>.broadcast();
  final StreamController<List> _salsasController          = StreamController<List>.broadcast();
  final StreamController<List> _quesoController           = StreamController<List>.broadcast(); 
  final StreamController<List> _rojaController            = StreamController<List>.broadcast(); 
  final StreamController<List> _rosadaController          = StreamController<List>.broadcast();
  final StreamController<List> _mostazaController         = StreamController<List>.broadcast();
  final StreamController<List> _bBQController             = StreamController<List>.broadcast();
  final StreamController<List> _pinaController            = StreamController<List>.broadcast();
  final StreamController<List> _mayonesaController        = StreamController<List>.broadcast();
  final StreamController<List> _guacamoleController       = StreamController<List>.broadcast();
  final StreamController<List> _picanteController         = StreamController<List>.broadcast();
  final StreamController<List> _ajoController             = StreamController<List>.broadcast();
  final StreamController<List> _maizController            = StreamController<List>.broadcast();
  final StreamController<List> _cebollaSofritaController  = StreamController<List>.broadcast();
  final StreamController<List> _cebollaCrudaController    = StreamController<List>.broadcast();

  Stream<List> get ensaladaStream        => _ensaladaController.stream; 
  Stream<List> get ripioStream           => _ripioController.stream; 
  Stream<List> get salsasStream          => _salsasController.stream; 
  Stream<List> get quesoStream           => _quesoController.stream; 
  Stream<List> get rojaStream            => _rojaController.stream; 
  Stream<List> get rosadaStream          => _rosadaController.stream; 
  Stream<List> get mostazaStream         => _mostazaController.stream; 
  Stream<List> get bBQStream             => _bBQController.stream; 
  Stream<List> get pinaStream            => _pinaController.stream; 
  Stream<List> get mayonesaStream        => _mayonesaController.stream; 
  Stream<List> get guacamoleStream       => _guacamoleController.stream; 
  Stream<List> get picanteStream         => _picanteController.stream; 
  Stream<List> get ajoStream             => _ajoController.stream; 
  Stream<List> get maizStream            => _maizController.stream; 
  Stream<List> get cebollaSofritaStream  => _cebollaSofritaController.stream; 
  Stream<List> get cebollaCrudaStream    => _cebollaCrudaController.stream; 

  
  Function(List) get  ensaladaControllerCantidad       => _ensaladaController.sink.add;
  Function(List) get  ripioControllerCantidad          => _ripioController.sink.add;
  Function(List) get  salsasControllerCantidad         => _salsasController.sink.add;
  Function(List) get  quesoControllerCantidad          => _quesoController.sink.add;
  Function(List) get  rojaControllerCantidad           => _rojaController.sink.add;
  Function(List) get  rosadaControllerCantidad         => _rosadaController.sink.add;
  Function(List) get  mostazaControllerCantidad        => _mostazaController.sink.add;
  Function(List) get  bBQControllerCantidad            => _bBQController.sink.add;
  Function(List) get  pinaControllerCantidad           => _pinaController.sink.add;
  Function(List) get  mayonesaControllerCantidad       => _mayonesaController.sink.add;
  Function(List) get  guacamoleControllerCantidad      => _guacamoleController.sink.add;
  Function(List) get  picanteControllerCantidad        => _picanteController.sink.add;
  Function(List) get  ajoControllerCantidad            => _ajoController.sink.add;
  Function(List) get  maizControllerCantidad           => _maizController.sink.add;
  Function(List) get  cebollaSofritaControllerCantidad => _cebollaSofritaController.sink.add;
  Function(List) get  cebollaCrudaControllerCantidad   => _cebollaCrudaController.sink.add;




  dispouse(){

    _ensaladaController.close();
    _ripioController.close();
    _salsasController.close();
    _quesoController.close();
    _rojaController.close();
    _rosadaController.close();
    _mostazaController.close();
    _bBQController.close();
    _pinaController.close();
    _mayonesaController.close();
    _guacamoleController.close();
    _picanteController.close();
    _ajoController.close();
    _maizController.close();
    _cebollaSofritaController.close();
    _cebollaCrudaController.close();

  }

  
}