import 'package:flutter/material.dart';

class ListaHamburguesas with ChangeNotifier {

//Especiales 

  // Ingredientes
  List<int> _especialIngredienteTomate   = List.filled(10, 2);
  List<int> _especialIngredienteEnsalada = List.filled(10, 2);
  List<int> _especialIngredienteRipio    = List.filled(10, 2);
  List<int> _especialIngredienteTocineta = List.filled(10, 2);
  List<int> _especialIngredienteQueso    = List.filled(10, 2);

  // Adiciones
  List<int> _especialAdicionCarne    = new List.filled(11, 0);
  List<int> _especialAdicionTocineta = new List.filled(11, 0);
  List<int> _especialAdicionQueso    = new List.filled(11, 0);
  List<int> _especialAdicionEnsalada = new List.filled(11, 0);

  // Obtener Ingredientes 
  get especialIngredienteTomate   => _especialIngredienteTomate;

  get especialIngredienteEnsalada => _especialIngredienteEnsalada;

  get especialIngredienteRipio    =>  _especialIngredienteRipio;

  get especialIngredienteTocineta => _especialIngredienteTocineta;

  get especialIngredienteQueso    =>  _especialIngredienteQueso;

  // Obtener Adiciones 
  get especialAdicionCarne        => _especialAdicionCarne;

  get especialAdicionTocineta     => _especialAdicionTocineta;

  get especialAdicionQueso        => _especialAdicionQueso;

  get especialAdicionEnsalada     => _especialAdicionEnsalada;
  

  // Insertar Ingredientes
  set especialIngredienteTomate( List<int> ingredienteTomate) {

    this._especialIngredienteTomate = ingredienteTomate;
    notifyListeners();
  }  

  set especialIngredienteEnsalada( List<int> ingredienteEnsalada) {

    this._especialIngredienteEnsalada = ingredienteEnsalada;
    notifyListeners();
  }

  set especialIngredienteRipio( List<int> ingredienteRipio) {

    this._especialIngredienteRipio = ingredienteRipio;
    notifyListeners();
  }

  set especialIngredienteTocineta( List<int> ingredienteTocineta) {

    this._especialIngredienteTocineta = ingredienteTocineta;
    notifyListeners();
  }

  set especialIngredienteQueso( List<int> ingredienteQueso) {

    this._especialIngredienteQueso = ingredienteQueso;
    notifyListeners();
  }

  // Insertar Adiciones
  set especialAdicionCarne( List<int> adicionCarne) {

    this._especialAdicionCarne = adicionCarne;
    notifyListeners();
  }

    set especialAdicionTocineta( List<int> adicionTocineta) {

    this._especialAdicionTocineta = adicionTocineta;
    notifyListeners();
  }

  set especialAdicionQueso( List<int> adicionQueso) {

    this._especialAdicionQueso = adicionQueso;
    notifyListeners();
  }

  set especialAdicioEnsalada( List<int> adicionEnsalada) {

    this._especialAdicionEnsalada = adicionEnsalada;
    notifyListeners();
  }



}